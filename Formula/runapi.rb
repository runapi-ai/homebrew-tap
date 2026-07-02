class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.13/runapi_0.2.13_Darwin_arm64.tar.gz"
      sha256 "13bae5cf790f8dc0ecb534932ab8cf37b0f9a7d4e8d49f90ce6ae5025f65a8e8"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.13/runapi_0.2.13_Darwin_x86_64.tar.gz"
      sha256 "3cb0ab0a741b3ac1a2b0477e72a2e6967461a89701bf0afc1ec1f30391564fb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.13/runapi_0.2.13_Linux_arm64.tar.gz"
      sha256 "503a318c0a3bf1a40b0b2812b2d178c9a51996eb1e23374cfb77af7ee07cb082"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.13/runapi_0.2.13_Linux_x86_64.tar.gz"
      sha256 "453ec58c1a98696656b5411fe87068b8fed0b72b5f28d12d7251e279b051a488"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.13\"", shell_output("#{bin}/runapi version")
  end
end
