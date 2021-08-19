# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Airplane < Formula
  desc ""
  homepage "https://airplane.dev"
  version "0.1.29"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.29/airplane_darwin_x86_64.tar.gz"
      sha256 "5458f767871beed79977f1918cb70046ca5a61a2ea2c38c582c37a60d685fa97"
    end
    if Hardware::CPU.arm?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.29/airplane_darwin_arm64.tar.gz"
      sha256 "378a7d22ec4421992375c0ea6fef4892b21a3f1e6e8b3b83d3349e351347c405"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.29/airplane_linux_x86_64.tar.gz"
      sha256 "d4e3d7cba9ec3f1d126155796d8f235e1daf41a244a325298b29abc0760ea6e7"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/airplanedev/cli/releases/download/v0.1.29/airplane_linux_arm64.tar.gz"
      sha256 "cbe0af56a5e1e5fb9fda5ce18e7df35e8929ec5cff65a9d20f7c2eed4b8955e7"
    end
  end

  def install
    bin.install "airplane"
  end

  test do
    system "#{bin}/airplane help"
  end
end
