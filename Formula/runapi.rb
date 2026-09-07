class Runapi < Formula
  desc "RunAPI command-line client"
  homepage "https://runapi.ai"
  version "0.13.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.1/runapi_0.13.1_Darwin_arm64.tar.gz"
      sha256 "f12cda301ae90101756aeb836eefa1967dfb3d89be5758a10fb25d0a85eddc25"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.1/runapi_0.13.1_Darwin_x86_64.tar.gz"
      sha256 "aed74c0297a1f663963d11d0dedbc878d6e4eba85a129d45f7b72007d48c1adb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.1/runapi_0.13.1_Linux_arm64.tar.gz"
      sha256 "ddaa0b3090407f98b02b16e024d43fbac91ab20dc338bb299a913bb172c1fd8c"
    else
      url "https://github.com/runapi-ai/cli/releases/download/v0.13.1/runapi_0.13.1_Linux_x86_64.tar.gz"
      sha256 "eaf087b867750034f735eed18663315a9baba3e7c587ec0a7f264973441320cd"
    end
  end

  def install
    bin.install "runapi"
  end

  test do
    assert_match "\"version\":\"0.13.1\"", shell_output("#{bin}/runapi version")
  end
end
