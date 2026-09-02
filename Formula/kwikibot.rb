class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.0/kwikibot-1.0.0-macos-arm64.tgz"
      sha256 "857a477cc595f16419243527a2e0d3584c065303582fa7ea2eeef2d1992f9ff4"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.0/kwikibot-1.0.0-macos-x64.tgz"
      sha256 "ae915eaf07c5181abda2d05d6778d4896dd1125038b8b02023a3cba8dba15389"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.0/kwikibot-1.0.0-linux-x64.tgz"
    sha256 "726efc89a60950717ecb1b30f63d90efa524ace59eeb9a4a39137d46eaf357f5"
  end

  def install
    libexec.install Dir["*"]
    launcher = Dir[libexec/"**/kwikibot"].find { |path| File.file?(path) && File.executable?(path) }
    odie "no kwikibot launcher in the archive" if launcher.nil?
    bin.install_symlink launcher => "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
