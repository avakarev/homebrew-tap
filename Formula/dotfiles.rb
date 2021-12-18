# frozen_string_literal: true

class Dotfiles < Formula
  desc 'CLI utility to manage dotfiles symlinks'
  homepage 'https://github.com/avakarev/dotfiles-cli'
  version '0.1.2'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.2/dotfiles_0.1.2_darwin_amd64.tar.gz"
    sha256 "b8e41d6661de6055a6d855cecc73d3e36df850b705650707411d833e7f2763f8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.2/dotfiles_0.1.2_darwin_arm64.tar.gz"
    sha256 "75caf917e60fc5818d807722527439f318e0ca169d6f05b7cf6a377914de1c2d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.2/dotfiles_0.1.2_linux_amd64.tar.gz"
    sha256 "831946dc1e51eaf42725dec84286df7a9f0541ccd9bbe02d608442f4ae59e0e1"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.2/dotfiles_0.1.2_linux_armv6.tar.gz"
    sha256 "2aa72d7ac096f1deb2fd61b2561b2abd3a0d23e849fa1bd50282c43e93e6b1f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.2/dotfiles_0.1.2_linux_arm64.tar.gz"
    sha256 "e3e6cfdd37e25bd651990402661b0935139966e7f8255aba0931e2a23179aff1"
  end

  def install
    bin.install "dotfiles"
  end
end
