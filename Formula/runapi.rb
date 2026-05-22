class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.3/runapi_0.2.3_Darwin_arm64.tar.gz"
      sha256 "7853e77f0340f25b403fd556892cc6e5f9a44311321c645948ca34a917ea3fea"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.3/runapi_0.2.3_Darwin_x86_64.tar.gz"
      sha256 "4024b8fe2d4d3d86d30305e3253b83b5300c165b7da1ce38ee1c9babcbc9cb58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.3/runapi_0.2.3_Linux_arm64.tar.gz"
      sha256 "1f86a77eb8e835fc604a111385510022900d1f64430ed69175d3e19b12628f79"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.3/runapi_0.2.3_Linux_x86_64.tar.gz"
      sha256 "09030d83808a936501de29a126f72e66db5aa15ea117ec3b940da3df3daa4367"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.3\"", shell_output("#{bin}/runapi version")
  end
end
