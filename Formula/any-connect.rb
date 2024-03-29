# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AnyConnect < Formula
  desc "Software to operate any connect easiser."
  homepage "https://github.com/TomoyukiSugiyama/any-connect"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TomoyukiSugiyama/any-connect/releases/download/v0.2.0/any-connect_0.2.0_darwin_arm64.tar.gz"
      sha256 "ee6c7b321727032d24a1e20749b0a6b87c1b9ae7606da1e99037528b8447a4d8"

      def install
        bin.install "any-connect"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TomoyukiSugiyama/any-connect/releases/download/v0.2.0/any-connect_0.2.0_linux_arm64.tar.gz"
      sha256 "1fc3487922f968c4249e688666c81a1dbadb0265293555f8939a8ee4b55caef9"

      def install
        bin.install "any-connect"
      end
    end
  end

  def caveats
    <<~EOS
      any-connect need to use AnyConnect provided by cisco.
    EOS
  end

  test do
    system "#{bin}/any-connect help"
  end
end
