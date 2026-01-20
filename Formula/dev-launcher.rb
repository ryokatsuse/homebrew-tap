class DevLauncher < Formula
  desc "Development environment launcher for managing multiple projects"
  homepage "https://github.com/ryokatsuse/dev-launcher"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryokatsuse/dev-launcher/releases/download/v0.2.0/dev-launcher-0.2.0-darwin-arm64.tar.gz"
      sha256 "65529b31dc2cebf7a78e99d00a754b1639d4513e073dc6fb393031f3ccd2bdc2"
    end
  end

  def install
    bin.install "dev-launcher"
  end

  test do
    system "#{bin}/dev-launcher", "help"
  end
end
