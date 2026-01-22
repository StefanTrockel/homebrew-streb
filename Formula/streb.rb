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
  version "0.6.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.9/streb_darwin_arm64.tar.gz"
      sha256 "06c5c4ded1224c49e919edc802e87eff13cd09ed42cb45d6ad5f0b843c1dfe28"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.9/streb_darwin_amd64.tar.gz"
      sha256 "36bad212c3c66c9abcce3d4f559ea6f8275085acef19bc76df4fac82058e3099"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.9/streb_linux_amd64.tar.gz"
      sha256 "c96da9e916098b073d83c632c34a7fcfcc4b246d4714d2da1283e07d188c31bb"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
