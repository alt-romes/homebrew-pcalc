# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Pcalc < Formula
  desc "CLI Programming Calculator"
  homepage ""
  url "https://github.com/alt-romes/programmer-calculator/archive/v1.3.tar.gz"
  sha256 "282a87dcdc848b31a630cf5ce7eb1fd11cc3c6761a4cf7dd04ff81e82f1d045f"
  license "GNU General Public License v3.0"

  depends_on "cmake" => :build
  depends_on "ncurses"

  def install
    system "make", "install"
    bin.install "pcalc"
  end

  test do
    system "true"
  end
end
