class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.8.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.4/runapi_0.8.4_Darwin_arm64.tar.gz"
      sha256 "b4400231c2040d590e11d2b14cf6fe88c191a9c796ccb0c94a349dfa44a87e35"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.4/runapi_0.8.4_Darwin_x86_64.tar.gz"
      sha256 "556e9703dc3f2bfa715bb92909fca9c0f0e7444286b76ee3d5d1cf44a4dadf3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.4/runapi_0.8.4_Linux_arm64.tar.gz"
      sha256 "22a5ad4963527e39e6c80f0a8459e8ede529ea6fd06816a73b38eadad70616d4"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.4/runapi_0.8.4_Linux_x86_64.tar.gz"
      sha256 "b12e4fe9efd7ac4c0c90e4ae25b00a260df688006a88ff10fda0382f54245653"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.8.4\"", shell_output("#{bin}/runapi version")
  end
end
