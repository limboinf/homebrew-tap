# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ydao < Formula
  desc "command line youdao"
  homepage "https://github.com/BeginMan/ydao"
  version "1.2"
  url "https://github.com/BeginMan/ydao/releases/download/v1.2.1/ydao-mac64-1.2.tar.gz"
  sha256 "435fff25d9e1c4129cf7d73bebe8d8af69c5d737f190015aa0e1c5213e08d9f0"

  # depends_on "cmake" => :build
  depends_on "mpg123" => :run

  def install
    bin.install "ydao"
  end

  test do
    system "#{bin}/ydao", "python"
  end
end
