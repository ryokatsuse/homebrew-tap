class DevLauncher < Formula
  desc "Development environment launcher for managing multiple projects"
  homepage "https://github.com/ryokatsuse/dev-launcher"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryokatsuse/dev-launcher/releases/download/v0.1.0/dev-launcher-0.1.0-darwin-arm64.tar.gz"
      sha256 "02cdc1bda9d956ceebdde7b4476cf4d97c3b5091056319cc1734e70eb5810dd9"
    end
  end

  def install
    bin.install "dev-launcher"
  end

  test do
    system "#{bin}/dev-launcher", "help"
  end
end
