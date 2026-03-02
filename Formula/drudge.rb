class Drudge < Formula
  desc "A CLI that prints the drudge page headlines to stdout"
  homepage "https://github.com/mikegetz/drudge"
  version "1.5.1"
  license "MIT"  # Adjust according to your license

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.5.1/drudge-v1.5.1-darwin-amd64"
      sha256 "2d280f325199a032b9de1fed6c9edeafdb83b67b44be7008c1c3a224c0d7c93f"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.5.1/drudge-v1.5.1-darwin-arm64"
      sha256 "447f839eab7e5aa8cda0767ab2110de87e5775a635105bfb6006feaffa6a222a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.5.1/drudge-v1.5.1-linux-amd64"
      sha256 "2b7660c3d97584f1d190b683678330a6c0ce20b1ab1e17bc0cc0fc3e26400751"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.5.1/drudge-v1.5.1-linux-arm64"
      sha256 "ecc0fb59ef0f5588e40704ad5a67880986ccd29b4e9823ff15e87845540614b5"
    end
  end

  def install
    binary = Dir["drudge-v1.5.1-*"].first
    chmod "+x", binary
    bin.install binary => "drudge"
  end

  test do
    system "#{bin}/drudge", "--version"
  end
end
