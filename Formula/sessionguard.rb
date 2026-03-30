# Copyright 2026 Devin R O'Loughlin / Droco LLC
# SPDX-License-Identifier: MIT

class Sessionguard < Formula
  desc "System-level daemon that keeps AI coding sessions intact when projects move"
  homepage "https://github.com/PilotDevo/sessionguard"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/PilotDevo/sessionguard/releases/download/v0.2.0/sessionguard-aarch64-apple-darwin.tar.gz"
      sha256 "2ccb2f7f9604c2618ab6d9e1339dab4c8d580f97e9829f57727378f447f2fd84"
    else
      url "https://github.com/PilotDevo/sessionguard/releases/download/v0.2.0/sessionguard-x86_64-apple-darwin.tar.gz"
      sha256 "307321d49d34a65f1cb741af35e0dd98e19224156fe4f17c17fd4b5fdd029dc3"
    end
  end

  on_linux do
    url "https://github.com/PilotDevo/sessionguard/releases/download/v0.2.0/sessionguard-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "8573f740031d390f5d1e6d21f148763f617446aa3c1ba5f4d3bac33add15f03d"
  end

  def install
    bin.install "sessionguard"
  end

  test do
    assert_match "sessionguard #{version}", shell_output("#{bin}/sessionguard --version")
  end
end
