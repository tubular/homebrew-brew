class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.0.3.tar.gz"
  sha256 "818ae80bbeae86a3184ad7dd1ddaa1f85587e340c4c26585dd916389982e6495"

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
