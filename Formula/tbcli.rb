class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.0.2.tar.gz"
  sha256 "3a34c67628f9a5712b3070d129fd4292e96c205090e369dab304ff2cc76eb57d"

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
