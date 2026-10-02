class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.2.0"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.2.0/kwikibot-1.2.0-macos-arm64.tgz"
      sha256 "b8f871cf2d8cc7c1d33ecd965d104e54b0fa6372f1d421d7aa75979aa88f0921"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.2.0/kwikibot-1.2.0-macos-x64.tgz"
      sha256 "bb16d18aca59dd4e5249bcba369720a55d5de7f31f3533a29b3de67e3f8e77fc"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.2.0/kwikibot-1.2.0-linux-x64.tgz"
    sha256 "43e5ad7b90e88dd0231ddaf7bce717409fce45a1af30438b1957773af1f6c0b9"
  end

  def install
    bin.install "kwikibot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
