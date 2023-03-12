# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class CloudSqlProxyV2Operator < Formula
  desc "Software to operate cloud-sql-proxy easiser."
  homepage "https://github.com/TomoyukiSugiyama/cloud-sql-proxy-v2-operator"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TomoyukiSugiyama/cloud-sql-proxy-v2-operator/releases/download/v0.1.3/cloud-sql-proxy-v2-operator_0.1.3_Darwin_arm64.tar.gz"
      sha256 "5d1f5efbf17f65fa744d96067111b492f2bedd45d9a2d80ef4e2910ab132f827"

      def install
        bin.install "cloud-sql-proxy-v2-operator"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TomoyukiSugiyama/cloud-sql-proxy-v2-operator/releases/download/v0.1.3/cloud-sql-proxy-v2-operator_0.1.3_linux_arm64.tar.gz"
      sha256 "a5d7db3561603cec56cca1e56723d3b76686496a4d28caa72700954df8d39484"

      def install
        bin.install "cloud-sql-proxy-v2-operator"
      end
    end
  end

  def caveats
    <<~EOS
      cloud-sql-proxy-v2-operator need to install gcloud cli from https://cloud.google.com/sdk/docs/install?hl=ja and cloud-sql-proxy v2.x.x from https://cloud.google.com/sql/docs/postgres/sql-proxy?hl=ja#install
    EOS
  end

  test do
    system "#{bin}/cloud-sql-proxy-v2-operator --version"
  end
end
