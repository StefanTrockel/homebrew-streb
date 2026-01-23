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
  version "0.7.14"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.14/streb_darwin_arm64.tar.gz"
      sha256 "70493e6db8d1da4addb85770199fdfb98823bdc2f8d9efd3b43b252ab4fcb966"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.14/streb_darwin_amd64.tar.gz"
      sha256 "c12cf14cb23d26b8cc351e37674a26e1b68e4971cbb1634a726f97e74c0a273a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.14/streb_linux_amd64.tar.gz"
      sha256 "f012057c102a933eb4110150621bbd7b8a498eb33f7e73c35379814c0d6e4d88"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
