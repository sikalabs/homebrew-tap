# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TergumTelemetryEdge < Formula
  desc "tergum-telemetry"
  homepage "https://github.com/sikalabs/tergum-telemetry"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum-telemetry/releases/download/v0.1.0/tergum-telemetry_v0.1.0_darwin_amd64.tar.gz"
      sha256 "6ac8d9d99fa27a88b0b01cd19266ea0e9034f0f17d3084de7beace27599ae1c0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/sikalabs/tergum-telemetry/releases/download/v0.1.0/tergum-telemetry_v0.1.0_darwin_arm64.tar.gz"
      sha256 "c515ba8526d9c0ffa2048a11270fc6560bfcf825ab8536be8dc1f0b88604da5f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sikalabs/tergum-telemetry/releases/download/v0.1.0/tergum-telemetry_v0.1.0_linux_amd64.tar.gz"
      sha256 "fc9a9bc2273e4f95f833f9e7185ea908e71b68ed7964b9e149e854e8f1c11d60"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sikalabs/tergum-telemetry/releases/download/v0.1.0/tergum-telemetry_v0.1.0_linux_arm64.tar.gz"
      sha256 "81482b4a0c74877bd935a8dcd1cff53a89280d425852fa48fbc4dc9144e91101"
    end
  end

  conflicts_with "tergum-telemetry"

  def install
    bin.install "tergum-telemetry"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/tergum-telemetry
  EOS
  end

  test do
    system "#{bin}/tergum-telemetry version"
  end
end
