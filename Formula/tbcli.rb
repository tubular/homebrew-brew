class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.0.2.tar.gz"
  sha256 "36735ed2bf5eb8fddfcc7f188371113cd8a1479389308c6edd0664a2d9adc746"

  depends_on "kapacitor"
  depends_on "python@3"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
