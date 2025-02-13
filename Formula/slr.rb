# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slr < Formula
  desc "slr"
  homepage "https://github.com/sikalabs/slr"
  version "0.10.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slr/releases/download/v0.10.0/slr_v0.10.0_darwin_amd64.tar.gz"
      sha256 "6da88f1d8be6ed725da475e383fe1c195081f7c25367556fd1b24237d224b93b"

      def install
        bin.install "slr"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slr/releases/download/v0.10.0/slr_v0.10.0_darwin_arm64.tar.gz"
      sha256 "ca935d52c16fb5f371b06f8396f4f976a6ff63e0855883b7f776f79060c59200"

      def install
        bin.install "slr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.10.0/slr_v0.10.0_linux_amd64.tar.gz"
        sha256 "6f165de480d1f5278f25b1092d66ad37134fffb3543ffe19f0012e4c8e1614da"

        def install
          bin.install "slr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.10.0/slr_v0.10.0_linux_arm64.tar.gz"
        sha256 "c1b48bbbab56d2ebb62fa213284051eecd981455ebe654e786879dda8d7ec846"

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
