class Tqs < Formula
  desc "Compile TypeScript to fast, small standalone native binaries via QuickJS"
  homepage "https://github.com/yowainwright/tqs"
  version "0.0.1"
  license "MIT"

  uses_from_macos "curl"

  on_macos do
    url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-darwin-arm64"
    sha256 "" # darwin-arm64
  end

  on_linux do
    url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-linux-x64"
    sha256 "" # linux-x64
  end

  def install
    bin.install Dir["tqs-*"].first => "tqs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tqs --version")
  end
end
