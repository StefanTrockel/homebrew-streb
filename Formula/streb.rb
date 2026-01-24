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
  version "0.7.17"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.17/streb_darwin_arm64.tar.gz"
      sha256 "fdc1297079f224d2d46c3722cd30c62bd26831a33f673487b12946e8299bcfd7"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.17/streb_darwin_amd64.tar.gz"
      sha256 "da28c1d642fd735ac450b4e7936e67125be2a5e70983a7908806244d6b74d550"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.17/streb_linux_amd64.tar.gz"
      sha256 "5dbf96f18b9150e6950e10940cd2c10cafc5561e02ce77b65e939c1ebd66bc24"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
