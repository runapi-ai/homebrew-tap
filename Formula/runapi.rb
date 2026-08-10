class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.10.0/runapi_0.10.0_Darwin_arm64.tar.gz"
      sha256 "97ce45508df7bdfd4a91a7170005118081ccdb04e32dd32c1e751edcfa996857"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.10.0/runapi_0.10.0_Darwin_x86_64.tar.gz"
      sha256 "12fe3012f0c16dfecb286386b993415140243995a29dda89586679f394f115d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.10.0/runapi_0.10.0_Linux_arm64.tar.gz"
      sha256 "1f39c0b1df7704fe49e58ef406542c7f5030956c47e89452a6f2de136fc3beaf"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.10.0/runapi_0.10.0_Linux_x86_64.tar.gz"
      sha256 "e4f1cf75b34c4e1620ff9d565791ae89a58aeb974643bb1085f11648164b84ae"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.10.0\"", shell_output("#{bin}/runapi version")
  end
end
