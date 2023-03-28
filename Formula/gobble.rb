# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gobble < Formula
  desc "gobble"
  homepage "https://github.com/sikalabs/gobble"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.0/gobble_v0.3.0_darwin_arm64.tar.gz"
      sha256 "a42fd9cde07d438afc1b64bfaf6fa036316103c825b030da736d376b25656d91"

      def install
        bin.install "gobble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.0/gobble_v0.3.0_darwin_amd64.tar.gz"
      sha256 "ea3b2064d7b8eaf1fefef79a6942e86c7912e16a5fde4d7a9f3ebc15dcce2899"

      def install
        bin.install "gobble"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.0/gobble_v0.3.0_linux_arm64.tar.gz"
      sha256 "a407e8002f41368bfa016dabd6f1afe3f913b1528e5a7fe80c77d3b6eafcd0c9"

      def install
        bin.install "gobble"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/gobble/releases/download/v0.3.0/gobble_v0.3.0_linux_amd64.tar.gz"
      sha256 "9234cf07b8328d9b828485c9246533aa6edb50c44f5ab9a2a3287b149113ff59"

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
