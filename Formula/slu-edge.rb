# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.18.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.18.0/slu_v0.18.0_darwin_amd64.tar.gz"
      sha256 "377cbfe83e07ac98d796672dca286b915a646214fa7f2d26a533f25cc4d37c2a"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.18.0/slu_v0.18.0_darwin_arm64.tar.gz"
      sha256 "a667565316142c14d777f17f7a00dfdde05c224de6aacf45b44224e2e215dd34"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.18.0/slu_v0.18.0_linux_amd64.tar.gz"
      sha256 "a9a9b36eae24d377cb13b0fdb43d4108c73cbe0aa7fe2b3f5744d3ba1281accc"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.18.0/slu_v0.18.0_linux_arm64.tar.gz"
      sha256 "c0fee8075c2e13c99d7e5ee2fc06a9ee787cc4530097739f9cc49e22cc9edc9d"
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
