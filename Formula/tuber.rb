# This file was generated by GoReleaser. DO NOT EDIT.
class Tuber < Formula
  desc "🥔"
  homepage "https://github.com/Freshly/tuber"
  version "0.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/Freshly/tuber/releases/download/v0.1.0/tuber_0.1.0_Darwin_x86_64.tar.gz"
    sha256 "c0b1f04b43f2ad3984081613b87f3d29c95de41950db49e46c4fb0e1bb154b26"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/Freshly/tuber/releases/download/v0.1.0/tuber_0.1.0_Linux_x86_64.tar.gz"
      sha256 "aae8c9c7f4ac6340f93a32a076228388aac797a9124e83fe5a86543a31d48e74"
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
