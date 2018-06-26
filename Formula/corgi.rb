# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
class Corgi < Formula
  desc "Corgi is a command-line workflow manager that helps with your repetitive command usages by organizing them into reusable snippet"
  homepage "https://github.com/DrakeW/corgi"
  url "https://github.com/DrakeW/corgi/releases/download/v0.2.3/corgi_v0.2.3_macOS_64-bit.tar.gz"
  version "0.2.3"
  sha256 "b5ae0ce16d979a5f466725eb1ea67776f62a37c17b64a4f2ddd00d36c2e4bafa"

  depends_on "fzf"

  def install
    bin.install "corgi"
  end

  test do
    system "#{bin}/corgi --version"
  end
end
