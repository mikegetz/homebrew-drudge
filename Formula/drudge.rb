class Drudge < Formula
  desc "A CLI that prints the drudge page headlines to stdout"
  homepage "https://github.com/mikegetz/drudge"
  version "1.2.5"
  license "MIT"  # Adjust according to your license

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.5/drudge-v1.2.5-windows-amd64"
      sha256 "604d7d9dd5731b4e5452407975a001ad4c0510b26a6c00fa5ff8061ca1598f2b"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.5/drudge-v1.2.5-darwin-arm64"
    sha256 "abcfae231a950c32b91033a3523c627c9c69b1a49cf14aff6dfd5290cbc752d2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.5/drudge-v1.2.5-darwin-amd64"
      sha256 "a4b14f4c96a7ecf8f3b32df61caefadbd44df107a1399ba61d0cbbb9dd969932"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.5/drudge-v1.2.5-linux-arm64"
      sha256 "b84bd062036be7b8a6d470ee28de1ba007d5b8a32e64b783cd3e1ffa80b351d8"
    end
  end

  def install
    chmod "+x", "drudge-v1.2.5-darwin-arm64"
  bin.install "drudge-v1.2.5-darwin-arm64" => "drudge"
  end

  test do
    system "#{bin}/drudge", "--version"
  end
end