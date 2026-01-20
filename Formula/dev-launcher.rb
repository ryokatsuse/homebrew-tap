class DevLauncher < Formula
  desc "Development environment launcher for managing multiple projects"
  homepage "https://github.com/ryokatsuse/dev-launcher"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ryokatsuse/dev-launcher/releases/download/v0.3.0/dev-launcher-0.3.0-darwin-arm64.tar.gz"
      sha256 "599ca64f23fc452a47e39e3868ddd458ffe9ae468c32608fa64933748df6e0e8"
    end
  end

  def install
    bin.install "dev-launcher"
  end

  test do
    system "#{bin}/dev-launcher", "help"
  end
end
