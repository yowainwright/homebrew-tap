class Codependence < Formula
  desc "Enforce dependency version policy across projects, workspaces, and CI"
  homepage "https://jeffry.in/codependence/"
  url "https://registry.npmjs.org/codependence/-/codependence-1.0.2.tgz"
  sha256 "8c938844a9457340e42958547ff58bee9b0f5977c6f0621fa69eeeea2d117e62"
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
