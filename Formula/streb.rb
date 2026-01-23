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
      sha256 "56702abc029dc80a8c36a31ceb26923e6bb291b60935d416a6d4b97991d97515"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.11/streb_darwin_amd64.tar.gz"
      sha256 "fc74ff1d154d3beede32f8d2669a2cc1f27ab4f3cf74e35682c1a81e29b9edd0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.11/streb_linux_amd64.tar.gz"
      sha256 "e395c993e171034ec9aab843844ec70882149f789119c802ef63375beffbc9c8"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
