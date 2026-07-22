class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.7.0/runapi_0.7.0_Darwin_arm64.tar.gz"
      sha256 "93b25e4dc261c7c1e09d3bb4af73051acb1c7c8710efad0924587620f328c9ce"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.7.0/runapi_0.7.0_Darwin_x86_64.tar.gz"
      sha256 "298da0801ca317b75e4a25f533dca9cf4804f1cb77a46aac3432522cf81f1758"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.7.0/runapi_0.7.0_Linux_arm64.tar.gz"
      sha256 "79e79d5e82382d0e85dd76fc5ee279bf0a88798ee6059de96a7b388f78ccbc87"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.7.0/runapi_0.7.0_Linux_x86_64.tar.gz"
      sha256 "c4bdb470f88492fa18bd0669f2648f0d221c21600739aaa47786de8c1d39c118"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.7.0\"", shell_output("#{bin}/runapi version")
  end
end
