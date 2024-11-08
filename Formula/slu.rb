# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.81.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slu/releases/download/v0.81.0/slu_v0.81.0_darwin_amd64.tar.gz"
      sha256 "2a3610b486a01f475ded38293e5f2d989750cbc4bcc8b9360391c7bd814ce1bc"

      def install
        bin.install "slu"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slu/releases/download/v0.81.0/slu_v0.81.0_darwin_arm64.tar.gz"
      sha256 "e9b571b96f6f43a41501d39710a8b1d7402db872c37463c8d2b48b8ded6d0822"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slu/releases/download/v0.81.0/slu_v0.81.0_linux_amd64.tar.gz"
        sha256 "4fd397b0a0cbdb1eea08392e12565f0439ee123e4704b79b8718b48968c08ea8"

        def install
          bin.install "slu"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slu/releases/download/v0.81.0/slu_v0.81.0_linux_arm64.tar.gz"
        sha256 "cda28e6e9eccda9868ded8b4348899e565000e7cbaa50fe55bcbe1e02aea642b"

        def install
          bin.install "slu"
        end
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
