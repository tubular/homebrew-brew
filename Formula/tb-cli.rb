class TbCli < Formula
  desc "A general purpose CLI for Tubular"
  homepage "https://app.tubularlabs.com/"
  url "http://archive.tubularlabs.com/brew/tbcli-0.0.1.tar.gz"
  sha256 "85cc828a96735bdafcf29eb6291ca91bac846579bcef7308536e0c875d6c81d7"

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
