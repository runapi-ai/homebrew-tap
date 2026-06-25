class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.11/runapi_0.2.11_Darwin_arm64.tar.gz"
      sha256 "ee98c8cb07f6428049d210ca146458c69690c00194670c72010157caaaf1646e"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.11/runapi_0.2.11_Darwin_x86_64.tar.gz"
      sha256 "cd193908edc1c6e1a7fd061614abeb6e183c5b1a727a587ada6acf4f56174459"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.11/runapi_0.2.11_Linux_arm64.tar.gz"
      sha256 "98961533b5ad60a01eaf4be91841a1aba6be1ca827610e1f8a32cd32e1c59cc0"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.11/runapi_0.2.11_Linux_x86_64.tar.gz"
      sha256 "30b1a26bf1e63787791b15a973648b943e64d4131ae34ac190da45707d962421"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.11\"", shell_output("#{bin}/runapi version")
  end
end
