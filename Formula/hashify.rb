# frozen_string_literal: true
#
class Hashify < Formula
  desc 'CLI utility to calculate file checksums'
  homepage 'https://github.com/avakarev/hashify'
  version '1.1.0'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avakarev/hashify/releases/download/1.1.0/hashify_1.1.0_darwin_amd64.tar.gz"
    sha256 "cf5019879c8e9404e3ea7fe318bcc6f6da15bbfba1a6f60792d65cbc9dfa9683"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avakarev/hashify/releases/download/1.1.0/hashify_1.1.0_darwin_arm64.tar.gz"
    sha256 "b5213aa7c23d3cc5cf969b3aa255edd8ae4855ce4ca45a9e8f75e94bacee272f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avakarev/hashify/releases/download/1.1.0/hashify_1.1.0_linux_amd64.tar.gz"
    sha256 "8433dcf9ac26ed6e44216e22f69de59f56ac18a8c8da3721dcd20d4966ba1c09"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/hashify/releases/download/1.1.0/hashify_1.1.0_linux_arm64.tar.gz"
    sha256 "22adf57c174d90a6d4efb4a6c7ae6014d223f8b7104bdf960f615fca3e5c7d14"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/hashify/releases/download/1.1.0/hashify_1.1.0_linux_armv6.tar.gz"
    sha256 "43578bd6a9a9958a28a78cb380b1b548460172c39445bbf8c6e5e2d68bff2d08"
  end

  def install
    bin.install "hashify"
  end
end
