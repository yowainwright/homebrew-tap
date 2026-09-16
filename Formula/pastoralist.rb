class Pastoralist < Formula
  desc "Audit, secure, and clean up package manager overrides"
  homepage "https://jeffry.in/pastoralist/"
  url "https://registry.npmjs.org/pastoralist/-/pastoralist-1.13.3.tgz"
  sha256 "aa4a37c0328dc0d053468966d27dc4b3e68cb695920fcf65b4d57e6819a817c7"
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
