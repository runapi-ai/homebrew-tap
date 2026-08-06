class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.8.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.7/runapi_0.8.7_Darwin_arm64.tar.gz"
      sha256 "fdbe9689089de5c6f158e2e205eec5fd585100f9a6fd5ef2ec9f9c75b523e5a8"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.7/runapi_0.8.7_Darwin_x86_64.tar.gz"
      sha256 "811870f10a0bffad63f30b7acc6e8f407d8728e5a244cee5df2f79620ba2e9c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.7/runapi_0.8.7_Linux_arm64.tar.gz"
      sha256 "5bd90d35aebfedcdfdd4f371af8b1e141ee964a04ae2cf37d4a8db76593d319c"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.7/runapi_0.8.7_Linux_x86_64.tar.gz"
      sha256 "99408cde7d929e4e554f7ff5434dc7b006d3229c4c7656ac1f57dbc6a334e32c"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.8.7\"", shell_output("#{bin}/runapi version")
  end
end
