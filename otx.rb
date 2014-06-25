require "formula"

class Otx < Formula
  homepage "https://github.com/darwin/otx"
  head "https://github.com/darwin/otx.git"

  depends_on :xcode # For working xcodebuild.

  def install
    xcodebuild 'SYMROOT=build'
    build = buildpath/'build/Release'
    bin.install build/"otx"
    prefix.install build/"otx.app"
  end
end
