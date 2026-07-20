class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.5.0/runapi_0.5.0_Darwin_arm64.tar.gz"
      sha256 "1bac982b887a97894323b399beb197cec219d8688e67493144ab91bea3913441"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.5.0/runapi_0.5.0_Darwin_x86_64.tar.gz"
      sha256 "c67a82c9b59ac3f478b85cedacad5278ba1636fe9a00406d62041228ee9eb995"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.5.0/runapi_0.5.0_Linux_arm64.tar.gz"
      sha256 "7a67666f2e9c4396f79f672acbee58914f5a86e093e433234ddb670be661dbea"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.5.0/runapi_0.5.0_Linux_x86_64.tar.gz"
      sha256 "46b0a5d208297bc7354dbaefdb620fd7c0ef0d22a192e5aca37774b44973f28e"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.5.0\"", shell_output("#{bin}/runapi version")
  end
end
