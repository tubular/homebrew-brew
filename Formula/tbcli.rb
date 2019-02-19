class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.4.5.tar.gz"
  sha256 "bb66a200db67a6db75f5524736758284f316d7e3539dc8830c8abc5411e0e52c"

  depends_on "kapacitor"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
