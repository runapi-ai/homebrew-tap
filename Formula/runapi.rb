class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.8.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.2/runapi_0.8.2_Darwin_arm64.tar.gz"
      sha256 "29b802913b905cf506e226aa50cf1af5cfaeb34fdda462f28dd80da5c68823e0"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.2/runapi_0.8.2_Darwin_x86_64.tar.gz"
      sha256 "be94ea524e686c2110eb3f397fe55f3d6627ae709a8cd55b6846b7f0c217e86e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.2/runapi_0.8.2_Linux_arm64.tar.gz"
      sha256 "9b829d051da20ead8f530cbb26376cdcca09fc41279ea3d7556562111ad22cf1"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.2/runapi_0.8.2_Linux_x86_64.tar.gz"
      sha256 "b15400cc692ba2bf4aecc1fe64d33952bdde490a238cc3ca3d1196d847457e75"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.8.2\"", shell_output("#{bin}/runapi version")
  end
end
