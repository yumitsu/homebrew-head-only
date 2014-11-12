require "formula"

class H2o < Formula
  homepage "https://github.com/h2o/h2o"
  head "https://github.com/h2o/h2o.git"

  depends_on "cmake" => :build

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "h2o"
    bin.install "h2o"
 end
end
