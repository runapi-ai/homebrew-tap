class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.10/runapi_0.2.10_Darwin_arm64.tar.gz"
      sha256 "7b8fd935bd34bb3760668b0175eb8c345eae879408564c5a7c91bf1c8c22dab4"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.10/runapi_0.2.10_Darwin_x86_64.tar.gz"
      sha256 "b865b98c7e24e8b0e47719e089f411b8c9abff532234dcb8e1d89e92c218df97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.10/runapi_0.2.10_Linux_arm64.tar.gz"
      sha256 "1fa2608e94dca45bc02b24c1d7b0814a5fb277fcd5d7850946187fc842e144c6"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.10/runapi_0.2.10_Linux_x86_64.tar.gz"
      sha256 "37692d21ad25b930a8e332402b22fc174fd13cb0bf0c5c892ff753d7686127b6"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.10\"", shell_output("#{bin}/runapi version")
  end
end
