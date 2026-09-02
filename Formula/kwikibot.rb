class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.0.2"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.2/kwikibot-1.0.2-macos-arm64.tgz"
      sha256 "47e0b473e37c406150e4af3c938d68e03695438e1d695e68a9132ab3e7421fce"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.2/kwikibot-1.0.2-macos-x64.tgz"
      sha256 "4967ee75721e255021b49c65bfc4aeae7b5479bcc8e92f254d37c71863f55859"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.2/kwikibot-1.0.2-linux-x64.tgz"
    sha256 "2d2a7b732f9f28783f9ad27e444589bef6317203b84cac782f00a616670b7a71"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
