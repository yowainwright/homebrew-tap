class M2rd < Formula
  desc "Render Mermaid diagrams in the terminal and export SVG"
  homepage "https://github.com/yowainwright/m2rd"
  url "https://github.com/yowainwright/m2rd/releases/download/v0.0.12/m2rd-0.0.12.tgz"
  sha256 "52f92607e37ed4d260b4b09f9d46cd7c15866810fad1611b7ea41a15bb79d611"
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
