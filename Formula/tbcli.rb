class Tbcli < Formula
  desc "General purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.35.0.tar.gz"
  sha256 "9b23a9830fd19b7bb6b04ea70e0ad9f29dd78a76128738b70d6b7bd873ba1333"

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
