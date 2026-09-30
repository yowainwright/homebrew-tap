class M2rd < Formula
  desc "Render Mermaid diagrams in the terminal and export SVG"
  homepage "https://github.com/yowainwright/m2rd"
  url "https://github.com/yowainwright/m2rd/releases/download/v0.0.12/m2rd-0.0.12.tgz"
  sha256 "783241f6913a55362806db958cb2519a85e0aa9b4d4e6cc656cdf812af2e32d8"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    (testpath/"example.mmd").write "flowchart LR\n  A[Start] --> B[Finish]\n"
    system bin/"m2rd", testpath/"example.mmd", "--output", testpath/"diagram.svg"
    svg = (testpath/"diagram.svg").read
    assert_match "<svg", svg
    assert_match "Start", svg
    assert_match "Finish", svg
  end
end
