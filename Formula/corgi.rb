# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Corgi < Formula
  desc "Corgi is a command-line workflow manager that helps with your repetitive command usages by organizing them into reusable snippet"
  homepage "https://github.com/DrakeW/corgi"
  url "https://github.com/DrakeW/corgi/releases/download/v0.2.2/corgi_v0.2.2_macOS_64-bit.tar.gz"
  version "0.2.2"
  sha256 "1eda2c5fa2960416b4528c99e27600daabe13b74f6bf6b205a1a442634878594"

  depends_on "fzf"

  def install
    bin.install "corgi"
  end

  test do
    system "#{bin}/corgi --version"
  end
end
