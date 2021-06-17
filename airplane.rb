# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Airplane < Formula
  desc ""
  homepage "https://airplane.dev"
  version "0.1.11"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.11/airplane_darwin_x86_64.tar.gz"
      sha256 "bb796e323610138751db1ab8004d6fbf7b58f352d13f8bcf80b294a34fc2d163"
    end
    if Hardware::CPU.arm?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.11/airplane_darwin_arm64.tar.gz"
      sha256 "9a4e891d75c13ef22444c7403b75af964a0e842c40225baeeb4e558ff2430028"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.11/airplane_linux_x86_64.tar.gz"
      sha256 "04a81b1a106063b863488ae4f4d8bd08b23e57dc0371287ac34aaf98c9c0a373"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.11/airplane_linux_arm64.tar.gz"
      sha256 "11170a38f9318dc576708783dcd4571b8fd6e3e2ecfe3673ce3451b84c373ef6"
    end
  end

  def install
    bin.install "airplane"
  end

  test do
    system "#{bin}/airplane help"
  end
end
