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
  version "0.7.15"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.15/streb_darwin_arm64.tar.gz"
      sha256 "6995c8e92bf659d39f09fd0254d83e55e531a6142670b4730ced7dab2220d9ef"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.15/streb_darwin_amd64.tar.gz"
      sha256 "3dcdaec1acbbbb0a380f8860c5a978cd4f824059336da0a8dc89cb97b91ba0de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.15/streb_linux_amd64.tar.gz"
      sha256 "0ab26df66a98c7b8d4213db14ce5f31555b8b8a2601b4a7425e361d9549971c2"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
