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
  version "0.7.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.10/streb_darwin_arm64.tar.gz"
      sha256 "dc1005d57213e1df7fc59261987fe8e0de2446bc44df9fcc41e85423e67a93bc"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.10/streb_darwin_amd64.tar.gz"
      sha256 "67c9cfaad4963dd8ad008fe42e1b66662115ae17a70baa0fc8092280e5fbd2e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.10/streb_linux_amd64.tar.gz"
      sha256 "bb97609f70aa6e0ae9b7814fb89046b298f6825ac9435c4d7baced9ba341cf90"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
