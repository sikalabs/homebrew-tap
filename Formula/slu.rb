# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.31.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.31.1/slu_v0.31.1_darwin_arm64.tar.gz"
      sha256 "dabec49cc017991ad8eb1c1247b7ce662debf81c38dc02c20159a1b90e1f9561"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.31.1/slu_v0.31.1_darwin_amd64.tar.gz"
      sha256 "2ea62944b75c52f3678de1e0550b4f22fe90db6837d36f666e335bafa9db058c"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.31.1/slu_v0.31.1_linux_arm64.tar.gz"
      sha256 "e1656b1b17582c4281fbe8ba243340105c91338e80e09968a60bffb41928e657"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.31.1/slu_v0.31.1_linux_amd64.tar.gz"
      sha256 "a132451afbde86764b561895a872b4239a94fdf477a06213ee849aee599be9ce"

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
