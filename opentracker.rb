require 'formula'

class Opentracker < Formula
  head 'cvs://:pserver:anoncvs:@cvs.erdgeist.org:/home/cvsroot:opentracker'
  homepage 'http://erdgeist.org/arts/software/opentracker/'

  depends_on 'libowfat' => :build

  def install
    system "make", "opentracker"
    bin.install "opentracker"
  end
end
