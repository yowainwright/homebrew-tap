class Codependence < Formula
  desc "Enforce dependency version policy across projects, workspaces, and CI"
  homepage "https://jeffry.in/codependence/"
  url "https://registry.npmjs.org/codependence/-/codependence-1.0.11.tgz"
  sha256 "41b23f83f551206391c342e740a5d3e9613f4aadbe1cb1107ea1750ac4eaa940"
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
