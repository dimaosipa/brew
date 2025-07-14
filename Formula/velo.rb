class Velo < Formula
  desc "Swift-based drop-in replacement for Homebrew"
  homepage "https://github.com/dimaosipa/velocity"
  url "https://github.com/dimaosipa/velocity/releases/download/v0.0.3/velo-v0.0.3-arm64.tar.gz"
  sha256 "6413faf17d15b717d63203063aa614ff4e8af4920fcf7e7f4300f65c278da25d"
  license "BSD-2-Clause"
  version "v0.0.3"

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