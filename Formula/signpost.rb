# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Signpost < Formula
  desc "signpost"
  homepage "https://github.com/sikalabs/signpost"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/signpost/releases/download/v0.4.0/signpost_v0.4.0_darwin_arm64.tar.gz"
      sha256 "0045a9d2cbf0e6d0f7b201795591ccbc871a18640f07f16a72b04d5ee5004990"

      def install
        bin.install "signpost"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/signpost/releases/download/v0.4.0/signpost_v0.4.0_darwin_amd64.tar.gz"
      sha256 "dc8dd59afbd026b0dfbfdda36c27597f1abc7e938f728888b05d978d1aba59b3"

      def install
        bin.install "signpost"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/signpost/releases/download/v0.4.0/signpost_v0.4.0_linux_arm64.tar.gz"
      sha256 "e82f871ebeb98a9690ea0e4805b8c62e9844c0a35332951d07997e70b122cf7d"

      def install
        bin.install "signpost"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/signpost/releases/download/v0.4.0/signpost_v0.4.0_linux_amd64.tar.gz"
      sha256 "82c0fc16b9c544ee00e5c84bc45a086e83d8b30b8cc47c071606e88ff32f1a4c"

      def install
        bin.install "signpost"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/signpost
    EOS
  end

  test do
    system "#{bin}/signpost version"
  end
end
