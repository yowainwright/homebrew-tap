class Pastoralist < Formula
  desc "Audit, secure, and clean up package manager overrides"
  homepage "https://jeffry.in/pastoralist/"
  url "https://registry.npmjs.org/pastoralist/-/pastoralist-1.13.4.tgz"
  sha256 "d1054b91693ac53d27f9a521e5c6d1b507e4e6993820217ba51d340a276f6bd2"
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
