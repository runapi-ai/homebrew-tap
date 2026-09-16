class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.13.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.4/runapi_0.13.4_Darwin_arm64.tar.gz"
      sha256 "a291d796645677e466f08abfc33552b34fa6b45687d42ff2d4449956ac42e514"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.4/runapi_0.13.4_Darwin_x86_64.tar.gz"
      sha256 "7a188bc2aab5240c1baa33702e96981cdce7a17da3315d71745d0c22c54484ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.4/runapi_0.13.4_Linux_arm64.tar.gz"
      sha256 "77b1ff448b579d77ebb9212c6dfdee8212164699d6dab87435205a332fba3fbf"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.4/runapi_0.13.4_Linux_x86_64.tar.gz"
      sha256 "ebdaffce184f22a9090d673ce10b6c18436046a598873b58010641641a96d57a"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.13.4\"", shell_output("#{bin}/runapi version")
  end
end
