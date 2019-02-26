class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.4.8.tar.gz"
  sha256 "361c2dffaf743189f085287c6b210677ec288d8bb5ed34e5d1e2476ace06fb23"

  depends_on "kapacitor"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
