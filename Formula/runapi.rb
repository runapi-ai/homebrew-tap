class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.1/runapi_0.3.1_Darwin_arm64.tar.gz"
      sha256 "8578bae65ea13b10c12dc1ecc35bc919fb2bc765db11c35698e2b8f46b1ebdca"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.1/runapi_0.3.1_Darwin_x86_64.tar.gz"
      sha256 "c2e7ef3b7d9c22d1760b463a8fcd12957114996ad468295ae9721ea93458fdc1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.1/runapi_0.3.1_Linux_arm64.tar.gz"
      sha256 "e2ce902705472f6d334ba37816e540f35640f57bcfdf433e43a5aaafaf0cfb36"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.3.1/runapi_0.3.1_Linux_x86_64.tar.gz"
      sha256 "a7e079dd946c0f3bae7f38665989b9511241461b960930335f48e8ffc000d8bf"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.3.1\"", shell_output("#{bin}/runapi version")
  end
end
