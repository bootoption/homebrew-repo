class Bootoption < Formula
  desc "EFI boot menu manipulation for macOS"
  homepage "https://github.com/bootoption/bootoption/"
  url "https://github.com/bootoption/bootoption/archive/0.3.7.tar.gz"
  sha256 "3056ecef36029bd480c407f1f3ce07a629d3fc973d0cb1c2be627f43aaaf3afc"
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/bootoption"
    man.install Dir["man/*"]
  end
  test do
    system "#{bin}/bootoption", "--version"
  end
end
