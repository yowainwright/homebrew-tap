class Pre < Formula
  desc "Security proxy for package managers"
  homepage "https://github.com/yowainwright/pre"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/pre/releases/download/v#{version}/pre-darwin-arm64"
      sha256 "" # darwin-arm64
    else
      url "https://github.com/yowainwright/pre/releases/download/v#{version}/pre-darwin-amd64"
      sha256 "" # darwin-amd64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/pre/releases/download/v#{version}/pre-linux-arm64"
      sha256 "" # linux-arm64
    else
      url "https://github.com/yowainwright/pre/releases/download/v#{version}/pre-linux-amd64"
      sha256 "" # linux-amd64
    end
  end

  def install
    bin.install Dir["pre-*"].first => "pre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pre --version")
  end
end
