class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.7.2.tar.gz"
  sha256 "d0383669de35ca08c7598fd5cef2cc2076215e68ff6fcf93af0247a63c8090d1"

  depends_on "kapacitor"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
