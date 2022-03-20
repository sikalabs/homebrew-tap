# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SluEdge < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.36.0-dev-4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.36.0-dev-4/slu_v0.36.0-dev-4_darwin_arm64.tar.gz"
      sha256 "d35c77177240f4cb4f073554d14ec6cfd076354c7f9fbc989152f73adc508c6e"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.36.0-dev-4/slu_v0.36.0-dev-4_darwin_amd64.tar.gz"
      sha256 "c09dcf9244b1b897aeab01babf1151b9bb2586a6c5f4464ce81745c503c3490d"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.36.0-dev-4/slu_v0.36.0-dev-4_linux_arm64.tar.gz"
      sha256 "95d4ed532e49a61527956146e040d025212853544e94a1aa057fd20d28198c49"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.36.0-dev-4/slu_v0.36.0-dev-4_linux_amd64.tar.gz"
      sha256 "f04bfe943d0df8b99d24e7107bf0fd7e3e190ec46ef75acfba2b8a4f932ae2c8"

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
