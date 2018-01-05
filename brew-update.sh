#!/bin/bash

if [ $# != 1 ];then
    echo "Usage: ./brew-update.sh <version>"
    exit 0
fi

VERSION=$1
PACKAGE="ydao-mac64-${1}.tar.gz"
URL="http://beginman.qiniudn.com/$PACKAGE"

wget "${URL}"
sha256="$(openssl dgst -sha256 $PACKAGE | tr '=' '\n')"
for l in $sha256
do
    sha256Value=$l
done

cat <<EOF > ydao.rb
class Ydao < Formula
  desc "command line youdao"
  homepage "https://github.com/BeginMan/ydao"
  version "$VERSION"
  url "http://beginman.qiniudn.com/ydao-mac64-$VERSION.tar.gz"
  sha256 "$sha256Value"

  # depends_on "cmake" => :build
  depends_on "mpg123" => :run

  def install
    bin.install "ydao"
  end

  test do
    system "#{bin}/ydao", "python"
  end
end
EOF
