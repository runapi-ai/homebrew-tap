class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.16/runapi_0.2.16_Darwin_arm64.tar.gz"
      sha256 "24c8c468fc020fcb05080b301f144889d549aafac94f0a37c6b7cc46cb41f8c9"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.16/runapi_0.2.16_Darwin_x86_64.tar.gz"
      sha256 "171bbf95947cc2f9c6a6ee4f5a0f3380c3eee13fa9b07f6efccf1a622abb3cba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.16/runapi_0.2.16_Linux_arm64.tar.gz"
      sha256 "1093950d8a270c0df52439b928408c2bfeff852bb066be634af48cab13a6e76f"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.16/runapi_0.2.16_Linux_x86_64.tar.gz"
      sha256 "e53fe2593cc2ec5fcea916a91b23343b86c6c318c9aa7a53f5a894c546370106"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.16\"", shell_output("#{bin}/runapi version")
  end
end
