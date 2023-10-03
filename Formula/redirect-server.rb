# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RedirectServer < Formula
  desc "redirect-server"
  homepage "https://github.com/sikalabs/redirect-server"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.1.0/redirect-server_v0.1.0_darwin_arm64.tar.gz"
      sha256 "171153d365984ea2f447c50b6fb1dfc2fb1378d08843b6253d0c3ecbbc4cc703"

      def install
        bin.install "redirect-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.1.0/redirect-server_v0.1.0_darwin_amd64.tar.gz"
      sha256 "6bbd5193b8787576921b8b596d9fd02ec41d4301e0f35764dd4646c6b25a5ed2"

      def install
        bin.install "redirect-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.1.0/redirect-server_v0.1.0_linux_amd64.tar.gz"
      sha256 "ea7abf31945f350e925be49eb5095176a049e7fa17d72e8ea6667f284ca894a0"

      def install
        bin.install "redirect-server"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.1.0/redirect-server_v0.1.0_linux_arm64.tar.gz"
      sha256 "725cf2d7a48577048c7a440b38227f54b2cc4690340fbfc5d226e9205aba2976"

      def install
        bin.install "redirect-server"
      end
    end
  end

  def caveats
    <<~EOS
      How to use this binary: https://github.com/sikalabs/redirect-server
    EOS
  end

  test do
    system "#{bin}/redirect-server version"
  end
end