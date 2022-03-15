# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.35.0/slu_v0.35.0_darwin_arm64.tar.gz"
      sha256 "3e23177880ed0e1e990c121f9ccdc6df0e31d4557babd9887921a30b7f8daf66"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.35.0/slu_v0.35.0_darwin_amd64.tar.gz"
      sha256 "a3199fa4be5da4fea56879714e44069dfa5fcde9f680c619c547359c7e73d1ad"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.35.0/slu_v0.35.0_linux_arm64.tar.gz"
      sha256 "ac4f13e7de4f3e941dc7da11f300409fdbcc92279102c00455de1a5cccbdb282"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.35.0/slu_v0.35.0_linux_amd64.tar.gz"
      sha256 "804951d0072f0eb9abf5de456969fbbccb9db64bebdff739cffb3af9e877fa6b"

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
