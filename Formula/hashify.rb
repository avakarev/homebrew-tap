# frozen_string_literal: true
#
class Hashify < Formula
  desc 'CLI utility to calculate file checksums'
  homepage 'https://github.com/avakarev/hashify'
  version '1.0.0'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avakarev/hashify/releases/download/1.0.0/hashify_1.0.0_darwin_amd64.tar.gz"
    sha256 "db3a2fc2b6ad11d1b26b54c7b830a889c93b6838007095ba4daa7296f84dcd35"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avakarev/hashify/releases/download/1.0.0/hashify_1.0.0_darwin_arm64.tar.gz"
    sha256 "63ba78e3a12a712b9116f9f93d90e5a7979b413cd52ff2e98b10fd269b9aea33"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avakarev/hashify/releases/download/1.0.0/hashify_1.0.0_linux_amd64.tar.gz"
    sha256 "f72cb9003d104ecd43bbde0e4279a515365aa5f64b69c18119e6055dd7f89145"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/hashify/releases/download/1.0.0/hashify_1.0.0_linux_arm64.tar.gz"
    sha256 "1071cba74271f6a046d75225461a2c3b512174d8f9576acb1be7d0b4ca2e6103"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/hashify/releases/download/1.0.0/hashify_1.0.0_linux_armv6.tar.gz"
    sha256 "b515ab329401968959f86ba048a0e55e44c2cb13898c13db367c6d7b098aaf72"
  end

  def install
    bin.install "hashify"
  end
end
