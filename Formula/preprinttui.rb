class Preprinttui < Formula
  desc "Interactive Terminal User Interface for PreConnect printer"
  homepage "https://preconnect.app"
  version "0.1.11"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-macos-arm64.tar.gz"
      sha256 "ce6920c6c9ac892171e06773d076fe3ced5b33b85bea2202e0764ba4fd48a3ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-linux-musl-x86_64.tar.gz"
      sha256 "7dadcf8de52231d80996d2c62c27cce09892e4456a17aa88b63c176e4f776eb3"
    end
  end

  def install
    bin.install "preprinttui"
  end

  test do
    assert_match "preprinttui", shell_output("#{bin}/preprinttui --version 2>&1", 0)
  end
end
