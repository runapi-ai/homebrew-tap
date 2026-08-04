class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.8.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.6/runapi_0.8.6_Darwin_arm64.tar.gz"
      sha256 "70b538b690f9479d6c91f01745ea80f2551ccd7e7fee5d9df277261ad1b7ce77"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.6/runapi_0.8.6_Darwin_x86_64.tar.gz"
      sha256 "2f4ecdb114b48d8167ffafccaf7232500efd7dfa0017bbe97e64419d08d899a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.6/runapi_0.8.6_Linux_arm64.tar.gz"
      sha256 "2b214c5f9072240ce53e7d284bd16a819888c8f24d5b010480d22323c7b56f8a"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.8.6/runapi_0.8.6_Linux_x86_64.tar.gz"
      sha256 "04a32811c0097696b3910d6c60c2f8486f1f4232ca75e5f69f15e442980901a3"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.8.6\"", shell_output("#{bin}/runapi version")
  end
end
