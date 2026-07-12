class Sessionguard < Formula
  desc "System-level daemon that keeps AI coding sessions intact when projects move"
  homepage "https://github.com/PilotDevo/sessionguard"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-aarch64-apple-darwin.tar.gz"
      sha256 "59daf2fd5a426d803fedaf07d228eda4bc51d2e1c92c5bc48c9e449acbb44d68"
    end
    on_intel do
      url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-apple-darwin.tar.gz"
      sha256 "caf9a9fda3b44bfdfc88adf8d4211224ed77fb8d377dffb5922fda89efbd2d40"
    end
  end

  on_linux do
    url "https://github.com/PilotDevo/sessionguard/releases/download/v#{version}/sessionguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "944b0e9b1ad42979b7593ace4dcfcb5dbcb9e4f1fbc1a5bdfa3567d414b45b96"
  end

  def install
    bin.install "sessionguard"
  end

  test do
    assert_match "sessionguard #{version}", shell_output("#{bin}/sessionguard version")
  end
end
