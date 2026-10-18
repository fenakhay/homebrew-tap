class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.3.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.3.0/kwikibot-1.3.0-macos-arm64.tgz"
    sha256 "789e5ca5a499828a5e625a084c724c4cee617e2ffa2e6333ae7d884e00ac3606"
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.3.0/kwikibot-1.3.0-linux-x64.tgz"
    sha256 "ef4c419652825d02d7b672619dae86b2c6a9c2ae181c8e2d5e0288b6af97a681"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
