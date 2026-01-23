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
  version "0.7.11"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.11/streb_darwin_arm64.tar.gz"
      sha256 "815712ed1dcdb25e8ba000b3be5ee4f4dd659fc640903ac44fca1a9254a689af"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.11/streb_darwin_amd64.tar.gz"
      sha256 "a3bead86a14d9290e6669231bf5e4c76e2e7fc24e1c4ce658fe77d26e693f07a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.11/streb_linux_amd64.tar.gz"
      sha256 "640e03252c6527350eeed27f4a6f3edfbfff3d830e863d7d674bdd0e176f2afe"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
