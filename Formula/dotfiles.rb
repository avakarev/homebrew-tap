# frozen_string_literal: true

class Dotfiles < Formula
  desc 'CLI utility to manage dotfiles symlinks'
  homepage 'https://github.com/avakarev/dotfiles-cli'
  version '0.1.0'
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.0/dotfiles_0.1.0_darwin_amd64.tar.gz"
    sha256 "44f2ae55c64a608d0a472058f88c1b0d8b0bf3f4667a87b8e71cf300baa7232c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.0/dotfiles_0.1.0_darwin_arm64.tar.gz"
    sha256 "5052d8f3510ad1fc49f28cb87453573536aeca4a0f13013f81b75ee103d8a034"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.0/dotfiles_0.1.0_linux_amd64.tar.gz"
    sha256 "c12f6b7927ea91785a3413be908393b25749995f98a1d72a3aeec2dbf997d25f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.0/dotfiles_0.1.0_linux_armv6.tar.gz"
    sha256 "a8dab9e6e06bb869205f2012d6da5bed7358c591e4fd0f40468d5ed1d1f6aad3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.0/dotfiles_0.1.0_linux_arm64.tar.gz"
    sha256 "0466b2dba894071cf5ca47f8246dd57ba31b0d2a9582b68be83635b1edc84f95"
  end

  def install
    bin.install "dotfiles"
  end
end
