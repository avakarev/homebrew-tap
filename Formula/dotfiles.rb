# frozen_string_literal: true

class Dotfiles < Formula
  desc 'CLI utility to manage dotfiles symlinks'
  homepage 'https://github.com/avakarev/dotfiles-cli'
  version '0.1.3'

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.3/dotfiles_0.1.3_darwin_amd64.tar.gz"
    sha256 "7bb2492c47fe40e9ca26b2d69fbcc21adc5ff6f28483088f7ff1205050de4a5f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.3/dotfiles_0.1.3_darwin_arm64.tar.gz"
    sha256 "e02f30dfc1e1245dbb15347c990d177f0b6646b8efc93bff217617ff00c0557d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.3/dotfiles_0.1.3_linux_amd64.tar.gz"
    sha256 "7d2de6343e87a230a446c7fae35e4abc66fc0c0a2fc09aa6aeff92e6089e7fa4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.3/dotfiles_0.1.3_linux_arm64.tar.gz"
    sha256 "2662943ee938f9a6675218bb09c405b5d0ae4c0015b2ab70a80bde5900df967f"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.3/dotfiles_0.1.3_linux_armv6.tar.gz"
    sha256 "ef2d42e666d87e2b138267d6762001a5d08203818407f9c874a38a5d0465f1eb"
  end

  def install
    bin.install "dotfiles"
  end
end
