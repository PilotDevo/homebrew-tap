class Sessionguard < Formula
  desc "System-level daemon that keeps AI coding sessions intact when projects move"
  homepage "https://github.com/PilotDevo/sessionguard"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-aarch64-apple-darwin.tar.gz"
      sha256 "c6a3510aeb79f29bdb6cc6b93bb035d3e1bef266d737003cc92d603b14d098ed"
    end
    on_intel do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-apple-darwin.tar.gz"
      sha256 "50d6d2f895dc900f02d28fb6c3b11e256b79cca8725edc6a1a87f1200a679ae4"
    end
  end

  on_linux do
    url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d42f76f21a4c4011e0af071ea5bab2f55e9563640885b2947e49d6d614486082"
  end

  def install
    bin.install "sessionguard"
  end

  test do
    assert_match "sessionguard #{version}", shell_output("#{bin}/sessionguard version")
  end
end
