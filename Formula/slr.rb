# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slr < Formula
  desc "slr"
  homepage "https://github.com/sikalabs/slr"
  version "0.14.0"

  on_macos do
    on_intel do
      url "https://github.com/sikalabs/slr/releases/download/v0.14.0/slr_v0.14.0_darwin_amd64.tar.gz"
      sha256 "efed474e505c699b46b04358a5c53961118867eaebae7fa7767ff64a8307c061"

      def install
        bin.install "slr"
      end
    end
    on_arm do
      url "https://github.com/sikalabs/slr/releases/download/v0.14.0/slr_v0.14.0_darwin_arm64.tar.gz"
      sha256 "338cd93c2c616cb4f260ca81e4910a8c4a1743e6ec703963ff7a3d4d8085f32f"

      def install
        bin.install "slr"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.14.0/slr_v0.14.0_linux_amd64.tar.gz"
        sha256 "795cd4e928a52ab3c4d1da6c1cf40947802364bfca4d24fc695da01b02940af6"

        def install
          bin.install "slr"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/sikalabs/slr/releases/download/v0.14.0/slr_v0.14.0_linux_arm64.tar.gz"
        sha256 "5910f227bc2d1ea1543edc1a0a88edef8eba61d6b05b834a43f9fd7880480763"

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
