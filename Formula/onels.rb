class Onels < Formula
  desc "1 line script - Lightweight JSON CLI with JavaScript syntax"
  homepage "https://github.com/yowainwright/1ls"
  version "0.1.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-arm64"
      sha256 "5ea4a0b3d1daf955a1fea418bccd644cadd190b6fba8fb77182d3b0c25b75c40" # arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-x64"
      sha256 "7fd7aed58709b1d91357f819444d39371e46ee42e3c9f0c0fab384a216507d9d" # x64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-arm64"
      sha256 "952d8ee4443c914f2633250da085400fd4afa83dadffc82a426c137f623bcfae" # linux-arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-x64"
      sha256 "7c449715c6c090d18f8357577f87aae37467dec7631c99f13f8cc979966223a8" # linux-x64
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
