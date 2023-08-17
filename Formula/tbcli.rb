class Tbcli < Formula
  desc "General purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.net/brew/tbcli-1.2.1.tar.gz"
  sha256 "57204b996748719e473f5eefc9fee2f46fbbe7ac15f0052aeb9e91ccd0f4d08f"

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
