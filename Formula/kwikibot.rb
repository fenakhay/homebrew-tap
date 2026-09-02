class Kwikibot < Formula
  desc "Command-line tool for talking to a MediaWiki wiki"
  homepage "https://github.com/fenakhay/kwikibot"
  license "MIT"
  version "1.0.1"

  on_macos do
    on_arm do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.1/kwikibot-1.0.1-macos-arm64.tgz"
      sha256 "ce1fcfabca488666227987857a5465b73987dade581a0d0cb13ebf9705746bb0"
    end
    on_intel do
      url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.1/kwikibot-1.0.1-macos-x64.tgz"
      sha256 "16c55941caf3f0afcea325a42d9f326942a502ad5d2bd477f2637f354c996412"
    end
  end

  on_linux do
    url "https://github.com/fenakhay/kwikibot/releases/download/v1.0.1/kwikibot-1.0.1-linux-x64.tgz"
    sha256 "1c77a2b08bebbca407c850c891ae1430b49c3b395c40dc4306977b10823df4bc"
  end

  def install
    libexec.install Dir["*"]
    launcher = Dir[libexec/"**/kwikibot"].find { |path| File.file?(path) && File.executable?(path) }
    odie "no kwikibot launcher in the archive" if launcher.nil?
    bin.write_exec_script launcher
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kwikibot version")
  end
end
