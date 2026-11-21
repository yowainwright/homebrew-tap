class M2rd < Formula
  desc "Render Mermaid diagrams in the terminal and export SVG"
  homepage "https://github.com/yowainwright/m2rd"
  url "https://github.com/yowainwright/m2rd/releases/download/v0.0.19/m2rd-0.0.19.tgz"
  sha256 "60ab527da8f5912e144d903cd11b7419039cfb7b5c9a094b33a90e78fc308179"
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
