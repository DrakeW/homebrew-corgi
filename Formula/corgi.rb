# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Corgi < Formula
  desc "Corgi is a command-line workflow manager that helps with your repetitive command usages by organizing them into reusable snippet"
  homepage "https://github.com/DrakeW/corgi"
  url "https://github.com/DrakeW/corgi/releases/download/v0.2.4/corgi_v0.2.4_macOS_64-bit.tar.gz"
  version "0.2.4"
  sha256 "6bab64f774db25abf3030f583df3f18c302c8e10f6bca2905e9e2513329d7fb7"

  depends_on "fzf"

  def install
    bin.install "corgi"
  end

  test do
    system "#{bin}/corgi --version"
  end
end
