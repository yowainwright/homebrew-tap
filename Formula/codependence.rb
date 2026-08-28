class Codependence < Formula
  desc "Enforce dependency version policy across projects, workspaces, and CI"
  homepage "https://jeffry.in/codependence/"
  url "https://registry.npmjs.org/codependence/-/codependence-1.0.15.tgz"
  sha256 "895a95f25bf619e920860f2d607e76d138a318482031e7d6aadd1afa835c4417"
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
