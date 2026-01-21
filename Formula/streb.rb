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
  version "0.6.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.2/streb_darwin_arm64.tar.gz"
      sha256 "46f6103cae584791ed6f85ebff367565db9380ccc48994d30714deeab19057d5"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.2/streb_darwin_amd64.tar.gz"
      sha256 "4e446277dad7b85c8db25ad06a4a88ac84d7ef7e792ea9b996f695534456c20c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.6.2/streb_linux_amd64.tar.gz"
      sha256 "426552181c0f1f355d235563a9c4c60a8bf44c44f641a31111fe97873779f315"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
