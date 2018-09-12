class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.1.0.tar.gz"
  sha256 "96fbdbf85c22d6ea2316218b4089b6c3f27a60d4517e765e087fa662231411fc"

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
