class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.1.1"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.1.1/kwikibot-1.1.1-macos-arm64.tgz"
      sha256 "b756e4a6a5e77c1f376639f4be64ac541c3b4e1af03d2a9f84f19c2043eacb9e"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.1.1/kwikibot-1.1.1-macos-x64.tgz"
      sha256 "6cc58565517820567103273740dafbd99af733724b29f2cb7c2e2877be8c70af"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.1.1/kwikibot-1.1.1-linux-x64.tgz"
    sha256 "56761d5678fac4ae413c9bf98aaf9599f70c07a5bdf3ed20c4da6b197b2a9212"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
