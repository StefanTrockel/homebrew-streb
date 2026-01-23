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
  version "0.7.13"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.13/streb_darwin_arm64.tar.gz"
      sha256 "0243d69473571466948ca33f7ff82f2b5b58b368d4756e882d6fc76e1832b346"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.13/streb_darwin_amd64.tar.gz"
      sha256 "37d562f615b444dc9450392aa1f1b96bfad49ab8842e35c5f7d0e2360451b9bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.13/streb_linux_amd64.tar.gz"
      sha256 "4a6caea93b3aced66ea9b5f3a8da7eb35ca9a741887f61b82b287e230dc3b70c"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
