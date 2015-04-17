class Bbcp < Formula
  homepage "http://www.slac.stanford.edu/%7Eabh/bbcp"
  head "http://www.slac.stanford.edu/~abh/bbcp/bbcp.git"

  depends_on "openssl"

  def install
    mkdir %w[bin obj]
    system "make", "-C", "src", "Darwin"
    bin.install "bin/bbcp"
  end

  test do
    system "#{bin}/bbcp", "--help"
  end
end
