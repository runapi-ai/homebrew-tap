class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.17/runapi_0.2.17_Darwin_arm64.tar.gz"
      sha256 "a1a7b7c2255d6bada4f8814d2c1388acfb626520c2065a6da31831667b8c8927"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.17/runapi_0.2.17_Darwin_x86_64.tar.gz"
      sha256 "281b0f8e79bec1c591445fe87f79c60e0cfae339662fd68f77038237f3f6300f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.17/runapi_0.2.17_Linux_arm64.tar.gz"
      sha256 "7dc8ec1f8c6f4bc9a546c1fdccc6385b1601e35437fb75f0d06c56442736bc23"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.17/runapi_0.2.17_Linux_x86_64.tar.gz"
      sha256 "236f78a347255586666155daa57ae7465690fc15dde8cf829fa2320e0daa1e02"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.17\"", shell_output("#{bin}/runapi version")
  end
end
