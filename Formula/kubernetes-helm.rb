class KubernetesHelm < Formula
  desc "Kubernetes package manager"
  homepage "https://helm.sh/"
  url "https://github.com/helm/helm.git",
      tag:      "v2.14.0",
      revision: "05811b84a3f93603dd6c2fcfe57944dfa7ab7fd0"
  head "https://github.com/helm/helm.git"

  bottle do
    root_url "https://homebrew.bintray.com/bottles"
    sha256 cellar: :any_skip_relocation, mojave:      "4cfcdb6c35a4ecc67b5ecb3b15a03b1c4e3caa15d834fd39b24baf2cc6557c45"
    sha256 cellar: :any_skip_relocation, high_sierra: "d64349bf456b9cd7cd203354ce1434b68b6b35e0e2a681cb51d1deb15fd3c4fd"
    sha256 cellar: :any_skip_relocation, sierra:      "a38d9716abb4b715ca5243f08b10687a630c251802b20f8a687e1cd54765d66f"
  end

  depends_on "glide" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GLIDE_HOME"] = HOMEBREW_CACHE/"glide_home/#{name}"
    ENV.prepend_create_path "PATH", buildpath/"bin"
    ENV["TARGETS"] = "darwin/amd64"
    dir = buildpath/"src/k8s.io/helm"
    dir.install buildpath.children - [buildpath/".brew_home"]

    cd dir do
      system "make", "bootstrap"
      system "make", "build"

      bin.install "bin/helm"
      bin.install "bin/tiller"
      man1.install Dir["docs/man/man1/*"]

      output = Utils.safe_popen_read({ "SHELL" => "bash" }, "#{bin}/helm", "completion", "bash")
      (bash_completion/"helm").write output

      output = Utils.safe_popen_read({ "SHELL" => "zsh" }, "#{bin}/helm", "completion", "zsh")
      (zsh_completion/"_helm").write output

      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/helm", "create", "foo"
    assert File.directory? "#{testpath}/foo/charts"

    version_output = shell_output("#{bin}/helm version --client 2>&1")
    assert_match "GitTreeState:\"clean\"", version_output
    if build.stable?
      assert_match stable.instance_variable_get(:@resource).instance_variable_get(:@specs)[:revision],
version_output
    end
  end
end
