class Onels < Formula
  desc "1 line script - Lightweight JSON CLI with JavaScript syntax"
  homepage "https://github.com/yowainwright/1ls"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-arm64"
      sha256 "e2936caaa7ae3e8aa3d8f21f91dfb1ffcb4081cb27b4b9caca6bc62a64985c1e" # arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-x64"
      sha256 "f9f3db177ecb4a6dbf6845f91ab5a4f777ccaddbe3bbe277973d68e1911745a1" # x64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-arm64"
      sha256 "b6d9166d40a7295015fd50f9287708e37c0f0d6c28ac1f093368f62205a13222" # linux-arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-x64"
      sha256 "be9c5aea31a3f07ef41dc1fb19d5c8e6cc5e8e4e0bd257e8bee514a35a42a9a2" # linux-x64
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
