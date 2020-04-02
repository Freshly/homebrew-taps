# This file was generated by GoReleaser. DO NOT EDIT.
class Tuber < Formula
  desc "🥔"
  homepage "https://github.com/Freshly/tuber"
  version "0.2.0-prerelease"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Freshly/tuber/releases/download/v0.2.0-prerelease/tuber_0.2.0-prerelease_Darwin_x86_64.tar.gz"
    sha256 "4e77e74ce9b51cbb3ea6652151343e19df6d31169b1b3edd11c12f772525029a"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Freshly/tuber/releases/download/v0.2.0-prerelease/tuber_0.2.0-prerelease_Linux_x86_64.tar.gz"
      sha256 "f07fb3de997a1970dfa352b33942e16568e208a71cd6ff919498daf60e029b81"
    end
  end
  
  depends_on "kubernetes-cli"

  def install
    bin.install "tuber"
  end

  test do
    system "#{bin}/tuber -v"
  end
end
