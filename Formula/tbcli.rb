class Tbcli < Formula
  desc "General purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.53.0.tar.gz"
  sha256 "8e3a7a70fda3e6b5df9a3fc2a813a8d19b068e19b41ade873cf7373fd49e5a40"

  depends_on "avro-tools"
  depends_on "awscli"
  depends_on "coreutils"
  depends_on "curl"
  depends_on "curl-openssl"
  depends_on "jansson"
  depends_on "kapacitor"
  depends_on "libxmlsec1"
  depends_on "lz4"
  depends_on "mysql-client"
  depends_on "snappy"

  # brew unpacks the tar.gz resulting in a tbcli.pex file which can be called directly
  def install
    bin.install "tbcli.pex" => "tb"
  end

  test do
    system "false"
  end
end
