# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TergumEdge < Formula
  desc "Tergum Backup Tool"
  homepage "https://github.com/sikalabs/tergum"
  version "0.14.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum/releases/download/v0.14.0/tergum_v0.14.0_darwin_amd64.tar.gz"
      sha256 "7b0c06171a7496a2b26a3947fe77db83f0566765a6b1811a93208100072cda34"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/tergum/releases/download/v0.14.0/tergum_v0.14.0_darwin_arm64.tar.gz"
      sha256 "448fe967e358ee993c9bb3a312191917ae74b8af5887b5685d751b7e3fc33241"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum/releases/download/v0.14.0/tergum_v0.14.0_linux_amd64.tar.gz"
      sha256 "0810002484c53ab2b3c0e97d40cc0e58b38f27b269494402fce096156f78315f"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/tergum/releases/download/v0.14.0/tergum_v0.14.0_linux_arm64.tar.gz"
      sha256 "8822122bc21d4f5333ed3a165aced56bd5aac01e3f99ef12d854658a4d3fba59"
    end
  end

  conflicts_with "tergum"

  def install
    bin.install "tergum"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/tergum
  EOS
  end

  test do
    system "#{bin}/tergum version"
  end
end
