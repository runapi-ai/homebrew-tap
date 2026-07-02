class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.12/runapi_0.2.12_Darwin_arm64.tar.gz"
      sha256 "70783d7f189bfff08aba8915f9f7ebf431595577988cd673bdf8c7e764248af2"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.12/runapi_0.2.12_Darwin_x86_64.tar.gz"
      sha256 "81a4e37a1702fc61d1d0a1a0452597a9399bf839202e0d04cb23c0e4c6781311"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.12/runapi_0.2.12_Linux_arm64.tar.gz"
      sha256 "97130525a1178393a63edd893f405f9ac279245c0302c8646bd6745095f28f00"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.12/runapi_0.2.12_Linux_x86_64.tar.gz"
      sha256 "4d66c545fabcc45f097f08309a50382b69377414e409ba259205d99e93667a19"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.12\"", shell_output("#{bin}/runapi version")
  end
end
