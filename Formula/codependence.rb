class Codependence < Formula
  desc "Enforce dependency version policy across projects, workspaces, and CI"
  homepage "https://jeffry.in/codependence/"
  url "https://registry.npmjs.org/codependence/-/codependence-1.0.12.tgz"
  sha256 "3d5d8487fd53862e4d1f94f692c155e2fc7547862c4d35b7ef8fe67fdff524ff"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--ignore-scripts"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    system bin/"codependence", "--help"
    system bin/"cdp", "--help"
  end
end
