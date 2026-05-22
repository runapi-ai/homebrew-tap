class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.5/runapi_0.2.5_Darwin_arm64.tar.gz"
      sha256 "04a324f29c37ce0b31be3d59190c85cde6e995cb40b521afcaf0951280add842"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.5/runapi_0.2.5_Darwin_x86_64.tar.gz"
      sha256 "378517d29c3f43fbb5e53ed773bca27c474990bd96e4eedebae5ae2571a63b93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.5/runapi_0.2.5_Linux_arm64.tar.gz"
      sha256 "ec6123456a1ab614ec15e046f87a7b5391d376f3449352a51275aef4286ea377"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.5/runapi_0.2.5_Linux_x86_64.tar.gz"
      sha256 "860c3f5c2c8af49e2140a518cb99e09d759bb668e4396e34c3c9dbe5098cd93e"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.5\"", shell_output("#{bin}/runapi version")
  end
end
