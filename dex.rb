class Dex < Formula
  homepage "https://github.com/tihirvon/dex"
  head "https://github.com/tihirvon/dex.git"

  depends_on "homebrew/dupes/ncurses" => :optional

  def install
    args = ["prefix=#{prefix}", "VERSION=head"]
    system "make", "all", *args
    system "make", "install", *args
  end

  test do
    system bin/"dex", "-V"
  end
end
