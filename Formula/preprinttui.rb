class Preprinttui < Formula
  desc "Interactive Terminal User Interface for PreConnect printer"
  homepage "https://preconnect.app"
  version "0.1.12"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-macos-arm64.tar.gz"
      sha256 "8e8c110a200c5b6619afc720fc20d0a90404c40873ba960f306c3de97ec90dac"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-linux-musl-x86_64.tar.gz"
      sha256 "dff434eea24012e69daeb304104bc9c96023575d560452c346ea2afdd3a3c965"
    end
  end

  def install
    bin.install "preprinttui"
  end

  test do
    assert_match "preprinttui", shell_output("#{bin}/preprinttui --version 2>&1", 0)
  end
end
