# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RedirectServer < Formula
  desc "redirect-server"
  homepage "https://github.com/sikalabs/redirect-server"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.3.0/redirect-server_v0.3.0_darwin_amd64.tar.gz"
      sha256 "eb0f06994bf349fb73b3c4f450f9f708640a2bc2c6b81ac1a5c99cdb31137ea6"

      def install
        bin.install "redirect-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.3.0/redirect-server_v0.3.0_darwin_arm64.tar.gz"
      sha256 "5dd62acc8b4d30a616783d0e91ac65de01b1a269eeb07bf6506ea831e07dd848"

      def install
        bin.install "redirect-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.3.0/redirect-server_v0.3.0_linux_arm64.tar.gz"
      sha256 "15773281258ed6a2adcac5ff42e754977256bef1e8ce05e99642a6138b2e1b28"

      def install
        bin.install "redirect-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/redirect-server/releases/download/v0.3.0/redirect-server_v0.3.0_linux_amd64.tar.gz"
      sha256 "c4d33e8b8306e3637b03d93753d7a37d032d445e7306a956ea0f00657ada19df"

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
