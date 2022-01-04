# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slu < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slu"
  version "0.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/slu/releases/download/v0.28.0/slu_v0.28.0_darwin_arm64.tar.gz"
      sha256 "fe085e33952db8a2ce98122baf00159e8786217c790ad0f4cc2ecdbc5f66ca93"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.28.0/slu_v0.28.0_darwin_amd64.tar.gz"
      sha256 "f4bf4532bf840b446393815ea11e717327c8529596aa7ba41670310e69246a3e"

      def install
        bin.install "slu"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/slu/releases/download/v0.28.0/slu_v0.28.0_linux_arm64.tar.gz"
      sha256 "826fc0ab0060bf63401dffc3df8efd97dbcb9d5b86b3743d8329197a90413681"

      def install
        bin.install "slu"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/slu/releases/download/v0.28.0/slu_v0.28.0_linux_amd64.tar.gz"
      sha256 "7ed3d4047f45a97d58aaee4945d1bc3db16e3aa6e1ade1be09126f57b3251a8e"

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
