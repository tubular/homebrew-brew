class AuroraCli < Formula
  desc "Apache Aurora Scheduler Client"
  homepage "https://aurora.apache.org"
  url "https://www.apache.org/dyn/closer.cgi?path=/aurora/0.20.0/apache-aurora-0.20.0.tar.gz"
  sha256 "9b56953ec95922ca332caaeebb0b9c1c9bec82b86bddd46b734782e831a49421"

  bottle do
    sha256 cellar: :any_skip_relocation, high_sierra: "77da0f72e53bfb0ffdd8af48a76df391e8d16fba029cd15ec087e3fa40995c1b"
    sha256 cellar: :any_skip_relocation, sierra:      "02f7a2877b978c0b5c37e2eca609e5ac5d612465fa1d2619aa99cfc3118b8153"
    sha256 cellar: :any_skip_relocation, el_capitan:  "a97a66254586aace43a789ae73df85781bff46c3d2837a0b9ad8d07bf9358dc7"
  end

  if MacOS.version <= :sierra
    patch do
      url "https://raw.githubusercontent.com/thinker0/aurora/virtualenv-update/pants.diff"
      sha256 "31951bdc046066dd9c1ca730a79f654faddad2fbff3faf9ac2a51f6a6ce0cd0a"
    end
  end

  depends_on "python@2"

  def install
    # No pants yet for Mojave, so we force High Sierra binaries there
    ENV["PANTS_BINARIES_PATH_BY_ID"] =
      "{('darwin','15'):('mac','10.11'),('darwin','16'):('mac','10.12'),('darwin','17'):('mac','10.13'),('darwin','18'):('mac','10.13')}"

    system "./pants", "binary", "src/main/python/apache/aurora/kerberos:kaurora"
    system "./pants", "binary", "src/main/python/apache/aurora/kerberos:kaurora_admin"
    bin.install "dist/kaurora.pex" => "aurora"
    bin.install "dist/kaurora_admin.pex" => "aurora_admin"
  end

  test do
    ENV["AURORA_CONFIG_ROOT"] = "#{testpath}/"
    (testpath/"clusters.json").write <<~EOS
      [{
        "name": "devcluster",
        "slave_root": "/tmp/mesos/",
        "zk": "172.16.64.185",
        "scheduler_zk_path": "/aurora/scheduler",
        "auth_mechanism": "UNAUTHENTICATED"
      }]
    EOS
    system "#{bin}/aurora_admin", "get_cluster_config", "devcluster"
  end
end
