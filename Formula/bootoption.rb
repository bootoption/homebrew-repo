class Bootoption < Formula
  desc "EFI boot menu manipulation for macOS"
  homepage "https://github.com/bootoption/bootoption/"
  url "https://github.com/bootoption/bootoption/archive/0.3.6.tar.gz"
  sha256 "e660ce1ef6c9c8faa94c908a9eafa1fdb6be9557e7bd4b42bc935b709d6410a4"
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release", "-Xswiftc", "-static-stdlib"
    bin.install ".build/release/bootoption"
    man.install Dir["man/*"]
  end
  test do
    system "#{bin}/bootoption", "--version"
  end
end