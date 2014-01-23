require "formula"

class RedisLeveldb < Formula
  homepage "https://github.com/KDr2/redis-leveldb"
  head "https://github.com/KDr2/redis-leveldb.git"

  depends_on "libev"
  depends_on "gmp"

  def install
    system "make"
    bin.install "redis-leveldb"
  end
end
