class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.7.4.tar.gz"
  sha256 "2e3d45bdaaee576fa761b151148e966cceaeb20fb990b072e4ca8ef6e8a6961c"

  depends_on "kapacitor"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
