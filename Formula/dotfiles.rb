class Dotfiles < Formula
  desc "Terminal UI and CLI for dotfiles management"
  homepage "https://github.com/TomoyukiSugiyama/dotfiles"
  url "https://github.com/TomoyukiSugiyama/dotfiles/releases/download/v0.2.0/dotfiles-0.2.0-universal-apple-darwin.tar.gz"
  sha256 "c7c190cba4dfe692b7282594949c6e4418a80299551ef00a26d7538299f35154"
  version "0.2.0"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "#{bin}/dotfiles", "--help"
  end
end
