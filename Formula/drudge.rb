class Drudge < Formula
  desc "A CLI that prints the drudge page headlines to stdout"
  homepage "https://github.com/mikegetz/drudge"
  version "1.2.4"
  license "MIT"  # Adjust according to your license

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.4/drudge-v1.2.4-windows-amd64"
      sha256 "220a16be854d42e1d3a38cda2cd05130086e4bfa1d284f62476c30b7b7ad81fe"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.4/drudge-v1.2.4-darwin-arm64"
    sha256 "fa46a8e74eb8f669bfaa982d28aa5709624eb960ed9c865cacc6a775289e0ec5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.4/drudge-v1.2.4-darwin-amd64"
      sha256 "54bb6fdf71b1fce8f1175b8ec3a2849de28819d1187a2e0fefc09c14b8005a01"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.2.4/drudge-v1.2.4-linux-arm64"
      sha256 "cd6fc9d26815171428f08844eb82348b9167d1f2607e7098a11272d0fa47c5d8"
    end
  end

  def install
    chmod "+x", "drudge-v1.2.4-darwin-arm64"
  bin.install "drudge-v1.2.4-darwin-arm64" => "drudge"
  end

  test do
    system "#{bin}/drudge", "--version"
  end
end