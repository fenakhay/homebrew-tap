class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.0/kwikibot-1.0.0-macos-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.0/kwikibot-1.0.0-macos-x64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.0/kwikibot-1.0.0-linux-x64.tar.gz"
    sha256 ""
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
