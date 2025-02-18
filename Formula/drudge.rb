class Drudge < Formula
  desc "A CLI that prints the drudge page headlines to stdout"
  homepage "https://github.com/mikegetz/drudge"
  version "1.3.0"
  license "MIT"  # Adjust according to your license

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.0/drudge-v1.3.0-darwin-amd64"
      sha256 "6b8c93a6f69461913fc45466f93742b8c1e0f20cd3eb1ae6bbe68f6047f5a95b"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.0/drudge-v1.3.0-darwin-arm64"
    sha256 "e689cf8df03d13561494a5aead14a91dcf0b17d651c5f17e03f8d31776ba9f24"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.0/drudge-v1.3.0-linux-amd64"
      sha256 "60aa79eb7760c755be4ab2bff3866d4a6464901273c72189869c03377a148491"
    elsif Hardware::CPU.arm?
      url "https://github.com/mikegetz/drudge/releases/download/v1.3.0/drudge-v1.3.0-linux-arm64"
      sha256 "850de4afe9e03795c4d244311eccfe50bc8ebed9e8794a9a43a8b93552c06144"
    end
  end

  def install
    chmod "+x", "drudge-v1.3.0-darwin-arm64"
  bin.install "drudge-v1.3.0-darwin-arm64" => "drudge"
  end

  test do
    system "#{bin}/drudge", "--version"
  end
end