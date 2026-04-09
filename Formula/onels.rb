class Onels < Formula
  desc "1 line script - Lightweight JSON CLI with JavaScript syntax"
  homepage "https://github.com/yowainwright/1ls"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-arm64"
      sha256 "a6b8e7addc26404e23f3d9a3ad1fb53d6f0a8d24921d407217c1125848055225" # arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-x64"
      sha256 "39b4c9c2bea4bf4e742d83cb37119923b57bb9246240cc1471038d4b8681bae6" # x64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-arm64"
      sha256 "4026eb6e59ef57b96f5f1155f4cadb20c96bbb7b8f79d75c34f18486bc4b111c" # linux-arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-x64"
      sha256 "aaab3e1948cf47dad106be7f3ed091e46666b583c01fa79d32b1d6bff7593dbc" # linux-x64
    end
  end

  def install
    bin.install Dir["1ls-qjs-*"].first => "1ls"
  end

  test do
    output = shell_output("echo '{\"name\": \"test\"}' | #{bin}/1ls '.name'")
    assert_match "test", output
  end
end
