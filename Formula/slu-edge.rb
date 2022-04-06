# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.38.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.38.0/slu_v0.38.0_darwin_arm64.tar.gz"
      sha256 "9a7242fdfd117fe4b3540ca8df0daf86f7a4c816462d9066563b0b970a96d137"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.38.0/slu_v0.38.0_darwin_amd64.tar.gz"
      sha256 "52229fd1a2c8e6becce6a4e5421516b55fb8a12254be984a386fee1c18b46563"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.38.0/slu_v0.38.0_linux_arm64.tar.gz"
      sha256 "720b75e7c794eb227dcb0bd98f952beb15d6f2a6bb27c168dfb58e1013be51bb"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.38.0/slu_v0.38.0_linux_amd64.tar.gz"
      sha256 "24385b042edb27a3f07705be5b85f0bbaba93902823f70f2107b314abcdbdd6d"

      def install
        bin.install "slu"
      end
    end
  end

  conflicts_with "slu"

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/slu
  EOS
  end

  test do
    system "#{bin}/slu version"
  end
end
