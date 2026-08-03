# frozen_string_literal: true

class Diu < Formula
  desc "Track package-manager and global CLI usage"
  homepage "https://github.com/yowainwright/diu"
  url "https://github.com/yowainwright/diu/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "47c134f7c8c24d32d696e050e58a32a0aea44c3a57ba1c2752c96eef19ffcd96"
  license "MIT"
  head "https://github.com/yowainwright/diu.git", branch: "main"

  depends_on "go" => :build
  depends_on :macos

  def install
    ENV["CGO_ENABLED"] = "0"
    ENV["GOTOOLCHAIN"] = "local"

    ldflags = [
      "-s",
      "-w",
      "-X main.version=#{version}",
      "-X github.com/yowainwright/diu/internal/core.Version=#{version}",
    ].join(" ")

    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/diu"
  end

  def caveats
    <<~EOS
      DIU stores configuration in ~/.config/diu/config.json
      and execution data in ~/.local/share/diu.

      Quick start:
        diu setup
        diu scan
    EOS
  end

  test do
    ENV["HOME"] = testpath

    assert_match "diu #{version}", shell_output("#{bin}/diu --version")
    system bin/"diu", "--help"
    assert_match "\"version\"", shell_output("#{bin}/diu config list")
  end
end
