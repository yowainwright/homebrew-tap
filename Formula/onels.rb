class Onels < Formula
  desc "1 line script - Lightweight JSON CLI with JavaScript syntax"
  homepage "https://github.com/yowainwright/1ls"
  version "0.1.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-arm64"
      sha256 "c692a616047342eacb8587cb28a44a13dc2bbc27767eba2caf560d474e517423" # arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-darwin-x64"
      sha256 "b273b0759ae0e2a0fe7d334727b97b661d121df688f1ada79aa53fa0cb05f64f" # x64
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-arm64"
      sha256 "d9a409b9705f7cc180f7c95bfcf08a2c403e701a34bc070baccf7654f67ce53c" # linux-arm64
    else
      url "https://github.com/yowainwright/1ls/releases/download/v#{version}/1ls-qjs-linux-x64"
      sha256 "bbf74542f2b6e4d645a440a5334c4ffedeb4ec615e1c0ea1e69037a09285bce8" # linux-x64
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
