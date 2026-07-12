class Sessionguard < Formula
  desc "System-level daemon that keeps AI coding sessions intact when projects move"
  homepage "https://github.com/PilotDevo/sessionguard"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-aarch64-apple-darwin.tar.gz"
      sha256 "788472ee267007fe32f55545061d13e93480767651850dc6173772dc0b7ba917"
    end
    on_intel do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-apple-darwin.tar.gz"
      sha256 "0382c39b95fe0da910db48662a078484d5da838fb21f89e2fa204d0210810183"
    end
  end

  on_linux do
    url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c484d3880b55f866577605d92cc6d3b2481439427f29523391bb0fd378571137"
  end

  def install
    bin.install "sessionguard"
  end

  test do
    assert_match "sessionguard #{version}", shell_output("#{bin}/sessionguard version")
  end
end
