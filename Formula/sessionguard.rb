class Sessionguard < Formula
  desc "System-level daemon that keeps AI coding sessions intact when projects move"
  homepage "https://github.com/PilotDevo/sessionguard"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-aarch64-apple-darwin.tar.gz"
      sha256 "b6653687b190d537f0dcdc1747e692233d6f38015f8b0baa9b30ac3ad9b3701e"
    end
    on_intel do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-apple-darwin.tar.gz"
      sha256 "47773b437189e9a8ad3355afa2515f78332dc3418350db79fdce4cbf80dbed30"
    end
  end

  on_linux do
    url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "096a9b7c8d6a5a2a9daad66e14e977e6d6f0df60605347efe39b85aface296ac"
  end

  def install
    bin.install "sessionguard"
  end

  test do
    assert_match "sessionguard #{version}", shell_output("#{bin}/sessionguard version")
  end
end
