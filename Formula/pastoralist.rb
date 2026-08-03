class Pastoralist < Formula
  desc "Audit, secure, and clean up package manager overrides"
  homepage "https://jeffry.in/pastoralist/"
  url "https://registry.npmjs.org/pastoralist/-/pastoralist-1.12.16.tgz"
  sha256 "34607144ab1665197971cc1c67e01a6a39bbc60184429aa9ef0c677416fe79c8"
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
