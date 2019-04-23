class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.5.5.tar.gz"
  sha256 "f9a1a27d2f9932c98ebbd7c55d62eeb095a183306b9f6616804e330ce02ebee2"

  depends_on "kapacitor"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
