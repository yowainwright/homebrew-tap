class Pastoralist < Formula
  desc "Audit, secure, and clean up package manager overrides"
  homepage "https://jeffry.in/pastoralist/"
  url "https://registry.npmjs.org/pastoralist/-/pastoralist-1.13.1.tgz"
  sha256 "78b243f2183e9110a8e3fa03717031553e8ad07e16b27892d0c926f5c64d2913"
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
