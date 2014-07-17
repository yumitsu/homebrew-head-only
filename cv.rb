require "formula"

class Cv < Formula
  homepage "https://github.com/BestPig/cv"
  head "https://github.com/BestPig/cv.git"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end
end
