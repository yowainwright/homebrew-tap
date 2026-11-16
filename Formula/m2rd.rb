class M2rd < Formula
  desc "Render Mermaid diagrams in the terminal and export SVG"
  homepage "https://github.com/yowainwright/m2rd"
  url "https://github.com/yowainwright/m2rd/releases/download/v0.0.18/m2rd-0.0.18.tgz"
  sha256 "fa361f6d29b4b1da50e29faac13ebdd6224a44acd69a38cea5a29e98a576d6fd"
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
