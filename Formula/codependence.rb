class Codependence < Formula
  desc "Enforce dependency version policy across projects, workspaces, and CI"
  homepage "https://jeffry.in/codependence/"
  url "https://github.com/yowainwright/codependence/releases/download/v1.0.7/codependence-darwin.tar.gz"
  sha256 "37acbaeecc6794e13fd36fb620ea899dd900549f521821e53f5078aee5881482"
  license "MIT"
  depends_on :macos

  def install
    binary = "codependence-darwin-x64"
    binary = "codependence-darwin-arm64" if Hardware::CPU.arm?
    bin.install binary => "codependence"
    chmod 0755, bin/"codependence"
    bin.install_symlink "codependence" => "cdp"
  end

  test do
    assert_match "Codependence", shell_output("#{bin}/codependence --help")
    assert_match "Codependence", shell_output("#{bin}/cdp --help")
  end
end
