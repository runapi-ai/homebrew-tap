class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.2/runapi_0.2.2_Darwin_arm64.tar.gz"
      sha256 "0775d03f786a287d56b3168df9a854ae6c09b369f69169e035d84bc6d4fe3299"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.2/runapi_0.2.2_Darwin_x86_64.tar.gz"
      sha256 "eeeba678cf4017e2c8b75bdb63bdb620e10dfd5089b512087efe7c988099eba8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.2/runapi_0.2.2_Linux_arm64.tar.gz"
      sha256 "3a5c9e22187360d3fc93a0e43f422373d763f31d5f8436452370a592220b3ca2"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.2/runapi_0.2.2_Linux_x86_64.tar.gz"
      sha256 "c163d53fd60eb400901515e38605bb2869b945c8a243bedc3c78f867d0e5617c"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.2\"", shell_output("#{bin}/runapi version")
  end
end
