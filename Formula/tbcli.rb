class Tbcli < Formula
  desc "General purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-2.0.0.tar.gz"
  sha256 "9304cfeba4a4cb1d46f34046e6579d15e5743f2391b18ce0847f1f9b496b32f6"

  depends_on "avro-tools"
  depends_on "awscli"
  depends_on "coreutils"
  depends_on "curl"
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
