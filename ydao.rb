# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ydao < Formula
  desc "command line youdao"
  homepage "https://github.com/BeginMan/ydao"
  version "1.2"
  url "https://github.com/BeginMan/ydao/releases/download/v1.2.1/ydao-mac64-1.2.tar.gz"
  sha256 "94cb905b4e12f6c575b293ea652f546b0b88852eca0855de0a870ae1c71526b9"

  # depends_on "cmake" => :build
  depends_on "mpg123" => :run

  def install
    bin.install "ydao"
  end

  test do
    system "#{bin}/ydao", "python"
  end
end
