class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.4.0"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.4.0/kwikibot-1.4.0-macos-arm64.tgz"
    sha256 "9e54336d076bdc5510c843e7ae461d04aec4d70a8eced970df44fe7fbd0c4a02"
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.4.0/kwikibot-1.4.0-linux-x64.tgz"
    sha256 "040e94e4cb3d89df819985f3c4136075cbaa22606a59cb1d4f163b4606812adb"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
