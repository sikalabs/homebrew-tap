# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.34.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.34.0/slu_v0.34.0_darwin_arm64.tar.gz"
      sha256 "9b599cc837dd333cc33095ae1d5c7c68716687f05f2d098ba9e06c2e8b5be05f"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.34.0/slu_v0.34.0_darwin_amd64.tar.gz"
      sha256 "a44432d80c35ca22940a6534362a123c9da2a54f4e2792dd381e80b6086e2bf2"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.34.0/slu_v0.34.0_linux_arm64.tar.gz"
      sha256 "6bb84d2c74b88b2bc91f722d08eae7d60a61201968e9bd40eb5ccafe8c361372"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.34.0/slu_v0.34.0_linux_amd64.tar.gz"
      sha256 "d3f1045b4272495105ee3b878e6766043f4b52dbaedf107683ed0e21cb70182d"

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
