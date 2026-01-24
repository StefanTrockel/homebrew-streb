# Homebrew formula for streb
#
# Installation:
#   brew tap adesso-ai/streb
#   brew install streb
#
# Auto-updated by GitHub Actions on each release.

class Streb < Formula
  desc "CLI tool for bootstrapping Claude Code development environments"
  homepage "https://strebcli.dev"
  version "0.7.18"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.18/streb_darwin_arm64.tar.gz"
      sha256 "11602591075ba8a76952c04f5fb68cc0d3bce7194eb1d23c404684d4973962ab"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.18/streb_darwin_amd64.tar.gz"
      sha256 "505f3d97851fecb0d16f0b3ae199de1cd1e53224917bb9028c5ac8b1b15053d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.18/streb_linux_amd64.tar.gz"
      sha256 "65f84d30b47ca2c7c1a303b3a92aee0f15f35dae998a552139ff1af0c1bec5cf"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
