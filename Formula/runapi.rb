class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.11.0/runapi_0.11.0_Darwin_arm64.tar.gz"
      sha256 "cd0cc029b48c4a752865c1c4f896bf08e497fad8db02777237e5a532967626fb"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.11.0/runapi_0.11.0_Darwin_x86_64.tar.gz"
      sha256 "b7da6841be997d9d784025bd1fbac843e7a00e2e1b5e0bcd2bd4a2c184acfa3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.11.0/runapi_0.11.0_Linux_arm64.tar.gz"
      sha256 "90343a059f6cc791e6e8108b4fdc6eb24901f034a93fc5bcd83a2f751be3aa4a"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.11.0/runapi_0.11.0_Linux_x86_64.tar.gz"
      sha256 "4e81d94cd2b802e8e371357f029b82eb1d5cf907da39b3e9d68efdd62e3da0ec"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.11.0\"", shell_output("#{bin}/runapi version")
  end
end
