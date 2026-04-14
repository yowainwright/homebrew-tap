class Tqs < Formula
  desc "Compile TypeScript to fast, small standalone native binaries via QuickJS"
  homepage "https://github.com/yowainwright/tqs"
  version "0.0.5"
  license "MIT"

  uses_from_macos "curl"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-darwin-arm64"
      sha256 "bf42bec8c539ad96a8949c33ddf140db77c38ada6d344e5634427b20ea053e05" # darwin-arm64
    else
      url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-darwin-x64"
      sha256 "" # darwin-x64
    end
  end

  on_linux do
    url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-linux-x64"
    sha256 "c2acc9401c15af3c3dfb83aba1e564a341ad916fae6a2c7d652d83ba9a794a54" # linux-x64
  end

  def install
    bin.install Dir["tqs-*"].first => "tqs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tqs --version")
  end
end
