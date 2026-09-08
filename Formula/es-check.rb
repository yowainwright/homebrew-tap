class EsCheck < Formula
  desc "Check JavaScript files against a requested ECMAScript version"
  homepage "https://github.com/yowainwright/es-check"
  url "https://registry.npmjs.org/es-check/-/es-check-9.6.4.tgz"
  sha256 "d5b9d069ac5c8c8a66d1b3f32a15a2a48bc43b3b39fe963891ac7f80f8ffa23c"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args, "--ignore-scripts"
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    system bin/"es-check", "--version"
    system bin/"es-check", "--help"
  end
end
