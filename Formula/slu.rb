# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.21.0/slu_v0.21.0_darwin_arm64.tar.gz"
      sha256 "e1ad3105bd0b3d21a5d97f6f8c3eb3d3922a07f9e40aa4d88361177514e28503"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.21.0/slu_v0.21.0_darwin_amd64.tar.gz"
      sha256 "854d6f6a8e17dc6d95a1099cada29894071990baecb051dca1d40f72a55e4015"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.21.0/slu_v0.21.0_linux_arm64.tar.gz"
      sha256 "912252626dbc6ea9da5959185474974c6fbf568876a687b106ee131b845bdae4"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.21.0/slu_v0.21.0_linux_amd64.tar.gz"
      sha256 "c692ac193cf168cae72c96643c023908a0b060c71626e1ca9002ea7a10689f77"

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
