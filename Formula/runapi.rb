class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.6.0/runapi_0.6.0_Darwin_arm64.tar.gz"
      sha256 "9355f1b33bbaeb7d6de50d71a9372591ebae64e4b29712a97f165ca892ca38d5"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.6.0/runapi_0.6.0_Darwin_x86_64.tar.gz"
      sha256 "7cdd8e52e542b1d8e5264e1526ed8a539e736265905dc134c5a0523889e9cc4b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.6.0/runapi_0.6.0_Linux_arm64.tar.gz"
      sha256 "b07413063104b002010a55efc99fddd623e33861fa8a64bd0ba8be1dd0b6d98f"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.6.0/runapi_0.6.0_Linux_x86_64.tar.gz"
      sha256 "5e2afa60e0acc2f35d260b58fc43e6dbff6a65d5df6146e1c3d829f15e6f3d3e"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.6.0\"", shell_output("#{bin}/runapi version")
  end
end
