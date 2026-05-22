class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.4/runapi_0.2.4_Darwin_arm64.tar.gz"
      sha256 "8ead2fe2832d874cc7bc399b599ee35c8b1788fc515de54f111f4f5941efc741"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.4/runapi_0.2.4_Darwin_x86_64.tar.gz"
      sha256 "ac567223d8aa85711ca8ef8ee7d5f31e59059dfe59863c895ab829a135f84dec"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.4/runapi_0.2.4_Linux_arm64.tar.gz"
      sha256 "b9c4a94ae3d1e48a29e4be100276d4660e6bbb8734d10bc6aa119ca2275a3639"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.4/runapi_0.2.4_Linux_x86_64.tar.gz"
      sha256 "690ed5ad1b12831d84dc928c64399347769861db26c1819af3899cf081710c6d"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.4\"", shell_output("#{bin}/runapi version")
  end
end
