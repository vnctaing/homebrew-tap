class GrindTui < Formula
  desc "LeetCode in your terminal — browse, run, and submit problems from a TUI"
  homepage "https://github.com/vnctaing/grind-tui"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-aarch64-apple-darwin.tar.gz"
      sha256 "b197fd0f0e4d10045de12daac4d177645771e06cfc37bf6200050f727ddd1950"
    end
    on_intel do
      url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-x86_64-apple-darwin.tar.gz"
      sha256 "83b1b4cf2fbc8eb107a91e6fde57cad20ac5ffafcf576f017321f88e2a676b1b"
    end
  end

  on_linux do
    url "https://github.com/vnctaing/grind-tui/releases/download/v0.1.0/grind-tui-x86_64-unknown-linux-musl.tar.gz"
    sha256 "aad696b1fc8a81da5212fa72a03e34b1cd2b19a35f82cf0ea34d0b9e241b9a82"
  end

  def install
    bin.install "grind"
  end

  test do
    assert_match "grind-tui", shell_output("#{bin}/grind --help")
  end
end
