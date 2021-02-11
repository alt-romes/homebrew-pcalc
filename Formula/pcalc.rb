# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Pcalc < Formula
  desc "CLI Programming Calculator"
  homepage ""
  url "https://github.com/alt-romes/programmer-calculator/archive/v2.0.1.tar.gz"
  sha256 "a3b8b59bd4da9a1ee39f73303e18005f2b4a45b655f7a7cca10aa9ce173610e7"
  license "GNU General Public License v3.0"

  depends_on "cmake" => :build
  depends_on "ncurses"

  def install
    system "make"
    bin.install "pcalc"
  end

  test do
    system "true"
  end
end
