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
  version "0.7.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.4/streb_darwin_arm64.tar.gz"
      sha256 "7e6e3ecfc798f347f77626b6b88f3aaf33f9a30b7a9e4b26a0c42248eec2a0b4"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.4/streb_darwin_amd64.tar.gz"
      sha256 "0696a0d617be215f721972277ada0a964ba203835401f2d1579af057fd851835"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.4/streb_linux_amd64.tar.gz"
      sha256 "7cf4c8e27f1bec58f52c81e0c79ade59f8b3d879d2ac8ea857723cefab490d9f"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
