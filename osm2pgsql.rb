require 'formula'

class Osm2pgsql < Formula
  head 'https://github.com/openstreetmap/osm2pgsql.git'
  homepage 'http://wiki.openstreetmap.org/wiki/Osm2pgsql'

  depends_on :automake
  depends_on :libtool
  depends_on 'postgis'
  depends_on 'proj'
  depends_on 'geos'
  depends_on 'protobuf-c' => :optional

  def install
    system "./autogen.sh"
    system "./configure"
    system "make"
    bin.install "osm2pgsql"
    (share+'osm2pgsql').install 'default.style'
  end
end
