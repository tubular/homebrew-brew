class Tbcli < Formula
  desc "General purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-0.54.0.tar.gz"
  sha256 "892426d38c6bc5761d708438518018f4edaf699b6b633f72b82aebb1228491f9"

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
