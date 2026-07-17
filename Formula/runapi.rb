class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.0/runapi_0.3.0_Darwin_arm64.tar.gz"
      sha256 "ed49037f3560a05df067f9b7fe7fdcb85f0fcce0c71bdbcf3df9ca6cd25a7fea"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.0/runapi_0.3.0_Darwin_x86_64.tar.gz"
      sha256 "731297e8de3d5356ae9b448e462af3f0f7b4d3f25d216b625dcb2601e4f029b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.0/runapi_0.3.0_Linux_arm64.tar.gz"
      sha256 "045f5c30bb099755cf6e3be6790b144d12d86a4226a933eacfdfaa9cb917fd9e"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.0/runapi_0.3.0_Linux_x86_64.tar.gz"
      sha256 "5c735e7d0ff4b2019e750d5dc7776851ccced5a3952f2761712262065eead27c"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.3.0\"", shell_output("#{bin}/runapi version")
  end
end
