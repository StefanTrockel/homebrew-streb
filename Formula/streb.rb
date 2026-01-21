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
  version "0.6.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.0/streb_darwin_arm64.tar.gz"
      sha256 "cd810a5e64c216e2554947ecc1a58979d9ff4f693d7524aeac04c5f8a59f2b81"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.0/streb_darwin_amd64.tar.gz"
      sha256 "ca121441b0634780e9113dc63518f46190ff1689c883157af00793dd3009eaf0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.0/streb_linux_amd64.tar.gz"
      sha256 "6695c83dd810a1e473babd00af3cfff6d3ad187e06e2e57cebccd7fb0018c8f3"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
