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
  version "0.7.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.3/streb_darwin_arm64.tar.gz"
      sha256 "0f922bdea67bd57b3d41954e1f7f2fe9485136d247945bbff8246d74ae4c9ce0"
    end
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.3/streb_darwin_amd64.tar.gz"
      sha256 "4775eb4cd00e202d12d31796051c858a93edbd4e35dec05342435c9a218de36a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adesso-ai/homebrew-streb/releases/download/v0.7.3/streb_linux_amd64.tar.gz"
      sha256 "613a9d1d1604d48dac0fe27f58a01aab2de7784e429663a8c0c0b826115b0374"
    end
  end

  def install
    bin.install "streb"
  end

  test do
    assert_match "streb version", shell_output("#{bin}/streb --version")
  end
end
