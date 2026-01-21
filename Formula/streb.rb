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
  version "0.6.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.4/streb_darwin_arm64.tar.gz"
      sha256 "0d6f00b93e76980270aec986e75b4a0f18fbe87f239c2e4a2398a591b50a06e1"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.4/streb_darwin_amd64.tar.gz"
      sha256 "092589eeab8376c1449e519a7ad36f1384cb6453fb8efbf1feb7780befe2a8fa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.4/streb_linux_amd64.tar.gz"
      sha256 "c418d14c56bf8802fe1f2f53ee3a151a3ce8fe38c0606fb1c30eb5d2f9b44334"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
