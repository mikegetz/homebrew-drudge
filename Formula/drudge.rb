class Drudge < Formula
  desc "A CLI that prints the drudge page headlines to stdout"
  homepage "https://github.com/mikegetz/drudge"
  version "1.3.1"
  license "MIT"  # Adjust according to your license

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.1/drudge-v1.3.1-darwin-amd64"
      sha256 "78b701029e3b548cf2591dd3b970fce6221e35be7a00b2cd824eed7c7fa96c75"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.1/drudge-v1.3.1-darwin-arm64"
    sha256 "cea2145ec0ed02e77a5250dcbb22e222693ad37a29f58e93e0d6cfc26c5098ca"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.1/drudge-v1.3.1-linux-amd64"
      sha256 "66a1003aec2233066a3c0fd6aebcfd63dfaa8f95a7f85a4f4e79b22e198782ea"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.1/drudge-v1.3.1-linux-arm64"
      sha256 "a2cad53bdf82d9b963ed1ba3cb79d2f7d0df4808887455b2b6c28aa984e1c78a"
    end
  end

  def install
    chmod "+x", "drudge-v1.3.1-darwin-arm64"
  bin.install "drudge-v1.3.1-darwin-arm64" => "drudge"
  end

  test do
    system "#{bin}/drudge", "--version"
  end
end