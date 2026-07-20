class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.1/runapi_0.4.1_Darwin_arm64.tar.gz"
      sha256 "a9d834d7d1a8b08c05ad06491bbbc65e98e5697e979d6373431d1d8bac653ad4"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.1/runapi_0.4.1_Darwin_x86_64.tar.gz"
      sha256 "12031ebe5fbd1bd8cd32a6fffa7d94205a5b1b919b868729dd8144820c190113"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.1/runapi_0.4.1_Linux_arm64.tar.gz"
      sha256 "344b4a9a875a6ec670bd047acfe8c291c19754fc6572d44e57fb75baa38c2480"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.4.1/runapi_0.4.1_Linux_x86_64.tar.gz"
      sha256 "7bcad1676bbd89d8d12763518947d62cbb1915de0d57868227a513a4cae157f1"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.4.1\"", shell_output("#{bin}/runapi version")
  end
end
