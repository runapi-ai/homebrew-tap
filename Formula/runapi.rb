class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.0/runapi_0.4.0_Darwin_arm64.tar.gz"
      sha256 "656bacf889be7812b967e7c982450029db1149aedc41f74bd1522f24c71e5cc4"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.0/runapi_0.4.0_Darwin_x86_64.tar.gz"
      sha256 "3fe5e748e6f042f99977223fb6b4a09c547824d08a7acac1f6d85c46465a0a2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.0/runapi_0.4.0_Linux_arm64.tar.gz"
      sha256 "9f2eb52bc2591f46f45611889e35aa2506d6f438bfa366a34cfba09e0aeb862b"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.0/runapi_0.4.0_Linux_x86_64.tar.gz"
      sha256 "571a945c540aaae58319f5de00a4b840abe2a9fcda511ecc4cc80d501968f0a2"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.4.0\"", shell_output("#{bin}/runapi version")
  end
end
