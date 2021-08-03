# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Slut < Formula
  desc "SikaLabs Utils"
  homepage "https://github.com/sikalabs/slut"
  version "0.3.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/sikalabs/slut/releases/download/v0.3.0/slut_v0.3.0_darwin_amd64.tar.gz"
    sha256 "62aa8ea266a9c16bf681c023d3918f852a9479bba8255605efe801a5b1ec332a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/sikalabs/slut/releases/download/v0.3.0/slut_v0.3.0_darwin_arm64.tar.gz"
    sha256 "470e24f96e5a649aa9c48e3be0f3bf567997da9a37e59f6fa63fd5af6df4d9fc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/sikalabs/slut/releases/download/v0.3.0/slut_v0.3.0_linux_amd64.tar.gz"
    sha256 "88f0033d0a9b1baaa92237294ce90440730070678431206604f5a6db5d63c306"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/sikalabs/slut/releases/download/v0.3.0/slut_v0.3.0_linux_arm64.tar.gz"
    sha256 "ae23aafe308273f51536cc75c61350bb88883d53d48ad1b042410f7561392e4f"
  end

  def install
    bin.install "slut"
  end

  def caveats; <<~EOS
    How to use this binary: https://github.com/sikalabs/slut
  EOS
  end

  test do
    system "#{bin}/slut version"
  end
end
