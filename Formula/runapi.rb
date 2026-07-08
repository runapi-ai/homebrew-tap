class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.2.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.15/runapi_0.2.15_Darwin_arm64.tar.gz"
      sha256 "0bff5b0df8b363ec7ceaf9420f1022ebdbfdbfc91b9559883bafa9a0823258cb"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.15/runapi_0.2.15_Darwin_x86_64.tar.gz"
      sha256 "568ce37be75f8a13045c934b1f8ab847acf9165352886592ec1fbce51b604132"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.15/runapi_0.2.15_Linux_arm64.tar.gz"
      sha256 "bb43b72b77f915a37f275d32cb6e086705a178a6a304a290f1be70eb82a52151"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.2.15/runapi_0.2.15_Linux_x86_64.tar.gz"
      sha256 "e2cc3205a8124c815e1eb801f7a889eb0194f2bed2e9880825de9913de6738da"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.2.15\"", shell_output("#{bin}/runapi version")
  end
end
