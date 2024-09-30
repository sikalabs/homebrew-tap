# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slr < Formula
  desc "slr"
  homepage "https://github.com/sikalabs/slr"
  version "0.7.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slr/releases/download/v0.7.0/slr_v0.7.0_darwin_amd64.tar.gz"
      sha256 "e2882a857926bfa9b8e5af6b0b619d6873702ab60bcfae3ef2a31aa84e3428bd"

      def install
        bin.install "slr"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slr/releases/download/v0.7.0/slr_v0.7.0_darwin_arm64.tar.gz"
      sha256 "db5500031027a23fb4b43a8b584767f6049d5135e7192fbe8d4d3a7aeb1a5625"

      def install
        bin.install "slr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.7.0/slr_v0.7.0_linux_amd64.tar.gz"
        sha256 "51f70eaab7a9381db3968a580c48190120523562f5b08b1e71d703a85fd43ac2"

        def install
          bin.install "slr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.7.0/slr_v0.7.0_linux_arm64.tar.gz"
        sha256 "49f8491cb14e0991f27e3888507f7b07f78982b95e9e635445178a23de6429fb"

        def install
          bin.install "slr"
        end
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/slr
    EOS
  end

  test do
    system "#{bin}/slr version"
  end
end
