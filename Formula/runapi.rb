class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.14/runapi_0.2.14_Darwin_arm64.tar.gz"
      sha256 "26e81ffa6c439f626a02c7364cd4c5899e9256e0fb85aab18fd052ef70865d99"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.14/runapi_0.2.14_Darwin_x86_64.tar.gz"
      sha256 "b8d4cdaa562d5eafc1cba2109458959cf1c10028def9eac70a93e8839f1a440d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.14/runapi_0.2.14_Linux_arm64.tar.gz"
      sha256 "d6e4f967bde9c1c406f42f60cbed00a96fbab829d0b7b8b006951ac4fea20bc8"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.14/runapi_0.2.14_Linux_x86_64.tar.gz"
      sha256 "b2162432d1773c893397cef811136b5e74ef4964eaf9d74f5a2c900e8e5b7d57"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.14\"", shell_output("#{bin}/runapi version")
  end
end
