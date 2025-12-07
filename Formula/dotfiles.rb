class Dotfiles < Formula
  desc "Terminal UI and CLI for dotfiles management"
  homepage "https://github.com/TomoyukiSugiyama/dotfiles"
  url "https://github.com/TomoyukiSugiyama/dotfiles/releases/download/v0.3.0/dotfiles-0.3.0-universal-apple-darwin.tar.gz"
  sha256 "80202335437d2ab7ee8b53a917e2322e3e30e9607a77c23bb159c75d028c24c7"
  version "0.3.0"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "#{bin}/dotfiles", "--help"
  end
end
