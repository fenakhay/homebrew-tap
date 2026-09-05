class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.1.0/kwikibot-1.1.0-macos-arm64.tgz"
      sha256 "93ec2499e12ec77099815c96a3d6e398b455849221833d8d3e0fcb5dfa61efe3"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.1.0/kwikibot-1.1.0-macos-x64.tgz"
      sha256 "a424e140ccf35cb2232390ec4b19675fde252e0248c147cd1ccd383b3f64a36f"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.1.0/kwikibot-1.1.0-linux-x64.tgz"
    sha256 "69105057f3f27163307303f96eb2304fcf4beee03aba44144881f0fb40e13679"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
