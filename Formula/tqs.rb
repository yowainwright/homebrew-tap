class Tqs < Formula
  desc "Compile TypeScript to standalone native binaries via QuickJS"
  homepage "https://github.com/yowainwright/tqs"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-darwin-arm64"
      sha256 "" # darwin-arm64
    else
      url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-darwin-x64"
      sha256 "" # darwin-x64
    end
  end

  on_linux do
    url "https://github.com/yowainwright/tqs/releases/download/v#{version}/tqs-linux-x64"
    sha256 "" # linux-x64
  end

  depends_on "curl"

  def install
    bin.install Dir["tqs-*"].first => "tqs"
  end

  test do
    output = shell_output("#{bin}/tqs --version")
    assert_match version.to_s, output
  end
end
