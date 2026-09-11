class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.13.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.3/runapi_0.13.3_Darwin_arm64.tar.gz"
      sha256 "1d7e325b8c20508270bce142002afe99e11e6ba710fe7921cb70db79c7ff24a6"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.3/runapi_0.13.3_Darwin_x86_64.tar.gz"
      sha256 "d5769edf55df9ede08cf730a45033421c79ffa9236ec243cbda089bd8ad271bb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.3/runapi_0.13.3_Linux_arm64.tar.gz"
      sha256 "d2d2e864af62bc9fa4e6b24428302f2b2a8748e1996884d1143e299442351cfa"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.3/runapi_0.13.3_Linux_x86_64.tar.gz"
      sha256 "228e592ad46a46b96d3122cdb017ca4f9e581d88686ad3eb8e56e70279c515cd"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.13.3\"", shell_output("#{bin}/runapi version")
  end
end
