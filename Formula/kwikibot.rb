class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.0.3"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.3/kwikibot-1.0.3-macos-arm64.tgz"
      sha256 "1ada257091c329346529b89da34b220c9324b3fa7ecec89ba4fb33d132e4ff2b"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.3/kwikibot-1.0.3-macos-x64.tgz"
      sha256 "ca473238254ce2a16e82279d457aa65b83140bda8e221016d6ca32451ede3953"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.3/kwikibot-1.0.3-linux-x64.tgz"
    sha256 "3562c110bbde24190f01dfb82f65baa6d1cf8cf3a3b3c3d6f80a5569786d6db9"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
