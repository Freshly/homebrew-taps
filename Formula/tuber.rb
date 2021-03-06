# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Tuber < Formula
  desc "🥔"
  homepage "https://github.com/Freshly/tuber"
  version "1.0.4"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Freshly/tuber/releases/download/v1.0.4/tuber_1.0.4_Darwin_x86_64.tar.gz"
      sha256 "92396b4649b5069b9c04981317d2b005d6cc734fa00c63659cfbd49b10ee33c0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/Freshly/tuber/releases/download/v1.0.4/tuber_1.0.4_Darwin_arm64.tar.gz"
      sha256 "50230cf3adcb47d12274a0f301b883efb382578f902e1483c65f3cb32fe8a2ef"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Freshly/tuber/releases/download/v1.0.4/tuber_1.0.4_Linux_x86_64.tar.gz"
      sha256 "9fcf451d6004680e68441a6973fa11c2db451f1eb3c5dcff6cf048bbca8babed"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Freshly/tuber/releases/download/v1.0.4/tuber_1.0.4_Linux_arm64.tar.gz"
      sha256 "8688773d9c9890c614894bb5db7ff623eaef66de2e0dcac94c2207a143fbada0"
    end
  end

  def install
    bin.install "tuber"
  end

  test do
    system "#{bin}/tuber -v"
  end
end
