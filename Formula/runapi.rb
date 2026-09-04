class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.0/runapi_0.13.0_Darwin_arm64.tar.gz"
      sha256 "30dfd7a9e85e66c3af091ac0847451c4306d8f33ee2c2c7bf27e11fbcd5f293d"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.0/runapi_0.13.0_Darwin_x86_64.tar.gz"
      sha256 "f162d9cdb3dc816e975f8785f4f0de952ed71e123cd10886a2e2bc66db3611b9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.0/runapi_0.13.0_Linux_arm64.tar.gz"
      sha256 "dcc4270b83b86bb2b7ed10093f708b69618958adf92a5163b00b7231858a38db"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.0/runapi_0.13.0_Linux_x86_64.tar.gz"
      sha256 "1aa78657aab8c234a3596a9f17c74dc49c39c80f695aa415822dfd7f0d6c592f"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.13.0\"", shell_output("#{bin}/runapi version")
  end
end
