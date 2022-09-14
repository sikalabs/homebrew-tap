# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.50.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.50.0/slu_v0.50.0_darwin_arm64.tar.gz"
      sha256 "0f3f96125d9ae41e7b239dedc5de29f2a4b48c949413346bb2ffa67cdd10029a"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.50.0/slu_v0.50.0_darwin_amd64.tar.gz"
      sha256 "ac817edfb97a6925c0cf5acfc60462515799b81de0dca531103f3ea90ed6c56e"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.50.0/slu_v0.50.0_linux_arm64.tar.gz"
      sha256 "ca89e8cbff189afff9246a16063c34bfc02f00be931d061d0841efca2a79485e"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.50.0/slu_v0.50.0_linux_amd64.tar.gz"
      sha256 "ea61a1145714547cb13876a132eb56f30f29113a16aae99afe48ddaf4ada1453"

      def install
        bin.install "slu"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/slu
    EOS
  end

  test do
    system "#{bin}/slu version"
  end
end
