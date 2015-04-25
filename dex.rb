require "formula"

class Dex < Formula
  homepage "https://github.com/tihirvon/dex"
  head "https://github.com/tihirvon/dex.git"

  depends_on "homebrew/dupes/ncurses" => :optional
  
  def install
    args = ["prefix=#{prefix}", "VERSION=head"]
    system "make", *args, "all"
    system "make", *args, "install"
  end
end
