require "formula"

class Stmd < Formula
  homepage "https://github.com/jgm/stmd"
  head "https://github.com/jgm/stmd.git"

  depends_on "re2c" => :build

  def install
    system "make"
    bin.install "stmd"
    man1.install "man/man1/stmd.1"
  end

  test do
    (testpath/"test.md").write <<-EOS.undent
      # Title

      text
      EOS
    out = shell_output("#{bin}/stmd test.md")
    assert_match %r{<h1>Title</h1>.*<p>text</p>}m, out
  end
end
