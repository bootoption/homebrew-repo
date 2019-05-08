class Bootoption < Formula
  desc "EFI boot menu manipulation for macOS"
  homepage "https://github.com/bootoption/bootoption/"
  url "https://github.com/bootoption/bootoption/archive/0.5.0.tar.gz"
  sha256 "24672162a86fa639682af317e656f321e0c386d6886b301f9797235c725cb6c0"
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/bootoption"
    man.install Dir["man/*"]
  end
  test do
    system "#{bin}/bootoption", "--version"
  end
end
