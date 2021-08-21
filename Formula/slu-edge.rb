# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.12.0-dev-1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.12.0-dev-1/slu_v0.12.0-dev-1_darwin_amd64.tar.gz"
      sha256 "5cf1306036c2ce9bff15550b4110da35a094397539162eaa3385a8eddc310c64"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.12.0-dev-1/slu_v0.12.0-dev-1_darwin_arm64.tar.gz"
      sha256 "f4d00416f7e4822cf5a75e4cfde94b41939dfcd695c3dd7727303a48752bdb9d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.12.0-dev-1/slu_v0.12.0-dev-1_linux_amd64.tar.gz"
      sha256 "2d1f3ccc31b3c48dbfdc8e6b2821ca050abcd3fdb3a4c96e3f905dbb01c3e1d4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.12.0-dev-1/slu_v0.12.0-dev-1_linux_arm64.tar.gz"
      sha256 "df89d01d62b7020459fad63c82c893a8cb63ddf11f517fb12933ea4432f1d822"
    end
  end

  conflicts_with "slu"

  def install
    bin.install "slu"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/slu
  EOS
  end

  test do
    system "#{bin}/slu version"
  end
end
