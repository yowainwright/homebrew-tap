class Codependence < Formula
  desc "Enforce dependency version policy across projects, workspaces, and CI"
  homepage "https://jeffry.in/codependence/"
  url "https://registry.npmjs.org/codependence/-/codependence-1.0.8.tgz"
  sha256 "4b89cd18b6b0056ac12616d26e8d3436de7c40f28238db0035d73e0a43ede223"
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
