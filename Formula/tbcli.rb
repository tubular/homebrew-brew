class Tbcli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.10.1.tar.gz"
  sha256 "e71d1348cfc4662ffd7252c3d53f51aaff5a603aaeaf13aa8d288429ecfb8d1f"

  depends_on "kapacitor"
  depends_on "awscli"
  depends_on "jansson"
  depends_on "lz4"
  depends_on "avro-tools"
  depends_on "snappy"
  depends_on "curl-openssl"
  depends_on "curl"
  depends_on "libxmlsec1"
  depends_on "coreutils"
  depends_on "mysql-client"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
