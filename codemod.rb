require 'formula'

class Codemod < Formula
  homepage 'https://github.com/facebook/codemod'
  head 'https://github.com/facebook/codemod.git'

  depends_on :python2

  def install
    python do
      system python, 'setup.py', 'install', "--prefix=#{prefix}"
      bin.install_symlink 'codemod.py' => 'codemod'
    end
  end

  def caveats
    python.standard_caveats if python
  end

  test do
    system "#{bin}/codemod", '--test'
  end
end
