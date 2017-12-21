# Documentation: https://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ydao < Formula
  desc "command line youdao"
  homepage "https://github.com/BeginMan/ydao"
  url "https://github.com/BeginMan/ydao/archive/v1.1.tar.gz"
  sha256 "430c3ea65fdb4556aec65179a29a5036d0061c59bbbd9c38c21315d872274e69"

  # depends_on "cmake" => :build
  depends_on "mpg123" => :run

  def install
    bin.install "ydao"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ydao`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ydao", "python"
  end
end
