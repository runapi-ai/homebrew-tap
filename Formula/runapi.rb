class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.15.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.15.0/runapi_0.15.0_Darwin_arm64.tar.gz"
      sha256 "c30d2bdea534dcd118b2f998b1ced4c8ea77c21c16f6324a82d91c5ae6ba36e1"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.15.0/runapi_0.15.0_Darwin_x86_64.tar.gz"
      sha256 "76a3d7299df531e6e3e7d2820e00a4424e648a0df905a1586a65e0186742d9e1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.15.0/runapi_0.15.0_Linux_arm64.tar.gz"
      sha256 "f9f7643c7af7f73c051cceffbcc12dbeed726be19272b711d5655597f58a3637"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.15.0/runapi_0.15.0_Linux_x86_64.tar.gz"
      sha256 "9ef47ddf9ba9d2687e5caba14daa46473542afafdb495ddf45ab739f4fa9fe3b"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.15.0\"", shell_output("#{bin}/runapi version")
  end
end
