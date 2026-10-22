class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.16.0/runapi_0.16.0_Darwin_arm64.tar.gz"
      sha256 "667716dcdad51739d3c2a3be78b498422c2e87fd2310a7fc44fdbfb261badfdc"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.16.0/runapi_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "d2056e3276677772f480f15121b1d90cd96e3bcd0ae8c1882bdb0d8a1442bd00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.16.0/runapi_0.16.0_Linux_arm64.tar.gz"
      sha256 "06baf31a8c6ac4d44f97f224cdd1c150063994a116912e6ff1e88d28780de860"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.16.0/runapi_0.16.0_Linux_x86_64.tar.gz"
      sha256 "0bd8df800fc32bcacfc787eadd1f1d82afa4ffbba9e2f3981531ac0af19977e5"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.16.0\"", shell_output("#{bin}/runapi version")
  end
end
