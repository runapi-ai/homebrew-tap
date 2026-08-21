class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.0/runapi_0.12.0_Darwin_arm64.tar.gz"
      sha256 "df2a54e8167ac7ada08353958cac36d36798e844575a318a2f50dbbaa873f6a5"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.0/runapi_0.12.0_Darwin_x86_64.tar.gz"
      sha256 "8be636a60c75a7c5763e27cf1058d61e2011788ba951364e5305dd4ce5fec268"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.0/runapi_0.12.0_Linux_arm64.tar.gz"
      sha256 "7e2cf409ef3621c97b713e6f2d3f99c7061d6d39f80d1301f1aaeb12d61a7815"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.0/runapi_0.12.0_Linux_x86_64.tar.gz"
      sha256 "140c2c029941b5aef07f3793e8362573e418259cad189cd887b55f8d99f7131b"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.12.0\"", shell_output("#{bin}/runapi version")
  end
end
