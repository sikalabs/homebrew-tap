# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.33.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.33.0/slu_v0.33.0_darwin_arm64.tar.gz"
      sha256 "a951c3a481f476b97a0e27fa0729853b83c7d0868b0317322c9309ad935dbbb0"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.33.0/slu_v0.33.0_darwin_amd64.tar.gz"
      sha256 "1575f80707f949cf227709acd92ede4ee3021a29eda5463984045b1fbe251e1d"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.33.0/slu_v0.33.0_linux_arm64.tar.gz"
      sha256 "9a830ef8ec3f5a07c257ae7b80555886bf0d808f73b5c0128ade065dff29ed47"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.33.0/slu_v0.33.0_linux_amd64.tar.gz"
      sha256 "d14c150a8a61f8256714399dd19287f4ba8d5c5442e272fd49803a11c12208e2"

      def install
        bin.install "slu"
      end
    end
  end

  conflicts_with "slu-edge"

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/slu
  EOS
  end

  test do
    system "#{bin}/slu version"
  end
end
