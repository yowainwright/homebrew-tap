class Pastoralist < Formula
  desc "Audit, secure, and clean up package manager overrides"
  homepage "https://jeffry.in/pastoralist/"
  url "https://registry.npmjs.org/pastoralist/-/pastoralist-1.13.0.tgz"
  sha256 "09b03d94a7f036ae845251eb74d9e716a445216ffb937cd7db38247301c6bd39"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--ignore-scripts"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    system bin/"pastoralist", "--version"
    system bin/"pastoralist", "--help"
  end
end
