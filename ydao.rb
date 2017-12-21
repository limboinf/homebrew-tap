# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ydao < Formula
  desc "command line youdao"
  homepage "https://github.com/BeginMan/ydao"
  url "http://beginman.qiniudn.com/ydao-mac64-1.1.tar.gz"
  sha256 "110a292052c0dbaae78c72942c13829f7260fb8ec5d62fde28eace8598b56a5a"

  # depends_on "cmake" => :build
  depends_on "mpg123" => :run

  def install
    bin.install "ydao"
  end

  test do
    system "#{bin}/ydao", "python"
  end
end
