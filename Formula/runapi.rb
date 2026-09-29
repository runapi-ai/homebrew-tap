class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.14.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.14.1/runapi_0.14.1_Darwin_arm64.tar.gz"
      sha256 "1d71f551967aaf874f1d8aa16ad4a628732a5078e160506899752008ab6686a1"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.14.1/runapi_0.14.1_Darwin_x86_64.tar.gz"
      sha256 "0513a62d9f97725af8c122e8e3f4ccf027183327070a405c5e9a0c7d48f5e773"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.14.1/runapi_0.14.1_Linux_arm64.tar.gz"
      sha256 "f3d2a40f402df765ec35597d33450b8c99e76659c36f92ff5a10deb31021ddea"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.14.1/runapi_0.14.1_Linux_x86_64.tar.gz"
      sha256 "7ea5721a763f401afb44536275cb690d20810592c8fd3f0efe3aac9546f261c8"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.14.1\"", shell_output("#{bin}/runapi version")
  end
end
