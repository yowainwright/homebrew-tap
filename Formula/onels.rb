class Onels < Formula
  desc "1 line script - Lightweight JSON CLI with JavaScript syntax"
  homepage "https://github.com/yowainwright/1ls"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-arm64"
      sha256 "2a933b66bcef604c599fe669647dd40da1930c4fdff90528e083a39a65e962fa" # arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-x64"
      sha256 "c28788e22e84ae9db6505861609a52ffc4ee08f1848f0bb90a206977ccefcf87" # x64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-arm64"
      sha256 "cf954d7854c7776979601e11706d465eef7e8c3ad8b3fe9c68d583097556d4cb" # linux-arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-x64"
      sha256 "4fcda90131d60122ea025359f3a4dd77aa401270c8a7440d6c3c4ebdd17b7b3b" # linux-x64
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
