require 'formula'

class Tuber < Formula
  homepage 'https://github.com/freshly/tuber'
  head 'https://github.com/freshly/tuber.git'

  url 'https://github.com/freshly/tuber.git'

  depends_on 'go' => :build

  fails_with :clang do
    build 700
    cause 'clang: error: unable to execute command: Segmentation fault: 11'
  end

  def install
    sytem 'go', 'build'
  end

  test do
    system 'tuber', '--help'
  end
end
