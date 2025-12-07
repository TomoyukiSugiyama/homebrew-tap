class Dotfiles < Formula
  desc "Terminal UI and CLI for dotfiles management"
  homepage "https://github.com/TomoyukiSugiyama/dotfiles"
  url "https://github.com/TomoyukiSugiyama/dotfiles/releases/download/v0.3.1/dotfiles-0.3.1-universal-apple-darwin.tar.gz"
  sha256 "380a41d8f467db6defbbc4f4feb07c6e5136dfc4ed74a441a802707d42e154a2"
  version "0.3.1"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "#{bin}/dotfiles", "--help"
  end
end
