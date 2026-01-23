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
  version "0.7.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.9/streb_darwin_arm64.tar.gz"
      sha256 "15479b3ad515d4f4e551ab3794e9520c6eafb3715160355fd5d8c6d4b74dba42"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.9/streb_darwin_amd64.tar.gz"
      sha256 "a111e666a9b89e3a44bfa391f1deaaea77c40c95d59fd6efbb0104be97ad241c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.9/streb_linux_amd64.tar.gz"
      sha256 "5583bd2acfbbbc036863bea09ddeccef8c35070f72224473a46b102d76bc917a"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
