class DevLauncher < Formula
  desc "Development environment launcher for managing multiple projects"
  homepage "https://github.com/ryokatsuse/dev-launcher"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryokatsuse/dev-launcher/releases/download/v0.4.0/dev-launcher-0.4.0-darwin-arm64.tar.gz"
      sha256 "98419818eb21577553459f3a28d97b5f2ec8f1d233feb5cd2df7d8a0319045cb"
    end
  end

  def install
    bin.install "dev-launcher"
  end

  test do
    system "#{bin}/dev-launcher", "help"
  end
end
