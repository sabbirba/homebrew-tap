class Preprinttui < Formula
  desc "Interactive Terminal User Interface for PreConnect printer"
  homepage "https://preconnect.app"
  version "0.1.13"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-macos-arm64.tar.gz"
      sha256 "ea99b1d74732a835ccdfb48fe70a2369321a2e9ea71e4d0106b6e0bf62aa9e54"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/sabbirba/preprinttui/releases/download/v#{version}/preprinttui-linux-musl-x86_64.tar.gz"
      sha256 "d1c83b163350fdc08bba233c1af5af33b71f3f508e96b808eaab0f9b9d941ab2"
    end
  end

  def install
    bin.install "preprinttui"
  end

  test do
    assert_match "preprinttui", shell_output("#{bin}/preprinttui --version 2>&1", 0)
  end
end
