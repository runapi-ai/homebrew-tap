class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.9.0/runapi_0.9.0_Darwin_arm64.tar.gz"
      sha256 "79281d37609b5769c3d36d459cd72be82cf275a8ca4102559802d18e7cd31161"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.9.0/runapi_0.9.0_Darwin_x86_64.tar.gz"
      sha256 "ae8b8d515eb350e9d477a5793a091e5237f2ba55e367e5d5e4da428aac500423"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.9.0/runapi_0.9.0_Linux_arm64.tar.gz"
      sha256 "31f5b3c8ed56814e28254cdfe38582c8360b25589d3c2446c4d678d6eff6c554"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.9.0/runapi_0.9.0_Linux_x86_64.tar.gz"
      sha256 "6d6ef8766722a3394725b250d54ebfebf4d3535f39e8fc02a3d65945a21030e6"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.9.0\"", shell_output("#{bin}/runapi version")
  end
end
