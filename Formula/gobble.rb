# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gobble < Formula
  desc "gobble"
  homepage "https://github.com/sikalabs/gobble"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.1/gobble_v0.3.1_darwin_arm64.tar.gz"
      sha256 "1dfbfd54b54270eeb13cc6ce88f82b057eb0878ba98b9f3a6ac903f2076ba342"

      def install
        bin.install "gobble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.1/gobble_v0.3.1_darwin_amd64.tar.gz"
      sha256 "836e3be6118666c73fe403f2e0ab440bb235674011455f88933968452e45355e"

      def install
        bin.install "gobble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.1/gobble_v0.3.1_linux_arm64.tar.gz"
      sha256 "ff76cab4ed3d25c35c6fe810c9d639048984a5e2b5c132e047dc165e9db00163"

      def install
        bin.install "gobble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.1/gobble_v0.3.1_linux_amd64.tar.gz"
      sha256 "f259fda799a0d32e55bbaa1aeb8284b65e37236e38cf7348b5e165f26ef5b579"

      def install
        bin.install "gobble"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/gobble
    EOS
  end

  test do
    system "#{bin}/gobble version"
  end
end
