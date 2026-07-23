class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.0/runapi_0.8.0_Darwin_arm64.tar.gz"
      sha256 "1614c7fe43af16becb03a28b2341b0e612d7dd0fc48ea2048a26f2987bc44b27"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.0/runapi_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "b569e1bd442f268b31b26419f0ab182919dce75167ea111c5ccc774341da227b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.0/runapi_0.8.0_Linux_arm64.tar.gz"
      sha256 "310f4df95ad74e4a72933d04377ce1c6047d2e7495a0c3a00314a6c2239b0be1"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.0/runapi_0.8.0_Linux_x86_64.tar.gz"
      sha256 "543bac0d9efcb4ebc7b96198cb534987b51757b9b0bdd3612574a54692ab28e0"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.8.0\"", shell_output("#{bin}/runapi version")
  end
end
