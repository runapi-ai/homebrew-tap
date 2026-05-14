class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.1.0/runapi_0.1.0_darwin_arm64.tar.gz"
      sha256 "f87f70965169cdbc54958b16aa089a8f38ac5e73cc1af4dd03a750ff860731eb"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.1.0/runapi_0.1.0_darwin_amd64.tar.gz"
      sha256 "a83b03a5947150a35d8eef84cf405bfba52df469d992e844fac64a9cdea6526b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.1.0/runapi_0.1.0_linux_arm64.tar.gz"
      sha256 "d9af9234596506ec911c62eb71fcefbc9c9a94fa1fdf8afcc855444609817141"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.1.0/runapi_0.1.0_linux_amd64.tar.gz"
      sha256 "f9035fce3fff474b5bc71ea3a394fe8390bc60ba9d04e51ba34eed0f0be68edf"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.1.0\"", shell_output("#{bin}/runapi version")
  end
end
