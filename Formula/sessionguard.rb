class Sessionguard < Formula
  desc "System-level daemon that keeps AI coding sessions intact when projects move"
  homepage "https://github.com/PilotDevo/sessionguard"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-aarch64-apple-darwin.tar.gz"
      sha256 "79409c44a4acdc4685b96b25eca530ee2c71c0ae4b82fa7c6eb7dedaef5e17cc"
    end
    on_intel do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-apple-darwin.tar.gz"
      sha256 "13e1c6c979c36de502e027d26891dc3517a7d37c3f71e0461e441a6909bfc34a"
    end
  end

  on_linux do
    url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d9231e04fa342683a7145fce6e357682b8e9647d1bdb27ed9079ebc8d9e6ebd1"
  end

  def install
    bin.install "sessionguard"
  end

  test do
    assert_match "sessionguard #{version}", shell_output("#{bin}/sessionguard version")
  end
end
