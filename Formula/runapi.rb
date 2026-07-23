class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.1/runapi_0.8.1_Darwin_arm64.tar.gz"
      sha256 "afbdde7dc37ed0e6fb0b080d788162810091c77baae6cc2499b7a3b297c7af11"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.1/runapi_0.8.1_Darwin_x86_64.tar.gz"
      sha256 "2881df96d24f22f5488bf76af6367c346ebcb9c63f7ea969b55b569af077200b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.1/runapi_0.8.1_Linux_arm64.tar.gz"
      sha256 "bd14f670151016d586dfae8b53a294b3352db0f6d7aaccc6c20e5a4693802809"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.1/runapi_0.8.1_Linux_x86_64.tar.gz"
      sha256 "4f141a1877fda3c465cf475ba1c51e957e98080a78a2710e959c58c3cbda1728"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.8.1\"", shell_output("#{bin}/runapi version")
  end
end
