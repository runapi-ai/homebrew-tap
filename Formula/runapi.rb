class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.13.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.2/runapi_0.13.2_Darwin_arm64.tar.gz"
      sha256 "0ab9a3b943f3388e6ca545ba116ca5aef857e32cdf0d05f6b8eb68779020ebf7"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.2/runapi_0.13.2_Darwin_x86_64.tar.gz"
      sha256 "586ea7d3455f84dd709038d2b5f9a4d2f39996ff150fb17094c53c3c3548beec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.2/runapi_0.13.2_Linux_arm64.tar.gz"
      sha256 "3f18e68060b24009ce7d6b0ba6fc27aef748aeeddcd2a67feb6cdf1f23fa4a78"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.2/runapi_0.13.2_Linux_x86_64.tar.gz"
      sha256 "c6f5fa5b48241261e7b9d38146696a4ccaed79173d9a42e519ccdaa7904437f4"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.13.2\"", shell_output("#{bin}/runapi version")
  end
end
