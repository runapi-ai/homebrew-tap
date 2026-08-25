class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.12.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.1/runapi_0.12.1_Darwin_arm64.tar.gz"
      sha256 "222163399d7cca029c4900915b7aa49818248efa9ecb053aeaca1c347273245a"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.1/runapi_0.12.1_Darwin_x86_64.tar.gz"
      sha256 "66689a0b5491ea75b013cdd574c7c741e249e46e04a6f9bd741db250c4700be2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.1/runapi_0.12.1_Linux_arm64.tar.gz"
      sha256 "36a0be7d10069bbf3b1f06ada78eb0aefa67d37689395fb6d7da3cee89c23a63"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.12.1/runapi_0.12.1_Linux_x86_64.tar.gz"
      sha256 "7ab21ccb61f65968d754ff94d4d78038c94be269034e2b5b21ba1cbf0350f875"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.12.1\"", shell_output("#{bin}/runapi version")
  end
end
