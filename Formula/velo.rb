class Velo < Formula
  desc "Swift-based drop-in replacement for Homebrew"
  homepage "https://github.com/dimaosipa/velocity"
  url "https://github.com/dimaosipa/velocity/releases/download/0.0.2/velo-0.0.2-arm64.tar.gz"
  sha256 "843d715c3dbbff1d7139927e6dd613610b64c3eab65a19b79b28ff81cdb5cd3c"
  license "BSD-2-Clause"
  version "0.0.2"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "velo"
  end

  def caveats
    <<~EOS
      Velo is a drop-in replacement for Homebrew that works with existing formulae.
      
      To get started:
        1. Run 'velo doctor' to check your installation
        2. Try 'velo install wget' to install your first package
        3. Use 'velo --help' to see all available commands
      
      Note: Velo requires Apple Silicon Macs and macOS 12.0 or later.
    EOS
  end

  test do
    system "#{bin}/velo", "--version"
    system "#{bin}/velo", "doctor"
  end
end