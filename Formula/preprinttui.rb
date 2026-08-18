class Preprinttui < Formula
  desc "Interactive Terminal User Interface for PreConnect printer"
  homepage "https://preconnect.app"
  version "0.1.5"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-macos-arm64.tar.gz"
      sha256 "fb5873c7ce5ea95c570783bd3484488a71a01df929eeec8625312f1381c4fa1c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-linux-musl-x86_64.tar.gz"
      sha256 "94d4aabda7842ada794fa2b2e19425600794ea5e3235461a852c3b36efc7e7a7"
    end
  end

  def install
    bin.install "preprinttui"
  end

  test do
    assert_match "preprinttui", shell_output("#{bin}/preprinttui --version 2>&1", 0)
  end
end
