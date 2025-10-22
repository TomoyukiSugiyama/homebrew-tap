class Dotfiles < Formula
  desc "Terminal UI and CLI for dotfiles management"
  homepage "https://github.com/TomoyukiSugiyama/dotfiles"
  url "https://github.com/TomoyukiSugiyama/dotfiles/releases/download/v0.1.0/dotfiles-0.1.0-universal-apple-darwin.tar.gz"
  sha256 "681d960886023b6d49274ab9ce6eeec59b9abcf968da83de81683be2125e1af2"
  version "0.1.0"
  license "MIT"

  def install
    bin.install "dotfiles"
  end

  test do
    system "#{bin}/dotfiles", "--help"
  end
end
