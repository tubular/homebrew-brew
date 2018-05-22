class TbCli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.0.1.tar.gz"
  sha256 "5f4de641da5282620510a189a0084fe1c889c1490a79694282c85e65b855bc4b"

  depends_on "kapacitor"
  depends_on "python@3"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "kappa.pex" => "tb"
  end

  test do
    system "false"
  end
end
