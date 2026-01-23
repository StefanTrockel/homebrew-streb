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
  version "0.7.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.8/streb_darwin_arm64.tar.gz"
      sha256 "2c45ce20ec4d3d10f3455d55039ad982758ac8fd8eabadf34f263883a62ecac9"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.8/streb_darwin_amd64.tar.gz"
      sha256 "1917e41021d4fbaf152ecfffc4c0f6d8c66e2f8bda4580864625a12c1a1e6bde"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.8/streb_linux_amd64.tar.gz"
      sha256 "c1c98f26f658a46b9b42010cb4ff8c86fff5fc15c9839732d621b85d25f62fe3"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
