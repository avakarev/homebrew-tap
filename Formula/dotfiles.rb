# frozen_string_literal: true

class Dotfiles < Formula
  desc 'CLI utility to manage dotfiles symlinks'
  homepage 'https://github.com/avakarev/dotfiles-cli'
  version '0.1.1'
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.1/dotfiles_0.1.1_darwin_amd64.tar.gz"
    sha256 "66a2d47dd1b3b5b20b2d09fb9f4a1b6077c2a07dc3957aac7c2a284d11016cf8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.1/dotfiles_0.1.1_darwin_arm64.tar.gz"
    sha256 "cfc365cd4a04cb918fa0c13f4d8813f60b996c215ead275de099689603cbeefa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.1/dotfiles_0.1.1_linux_amd64.tar.gz"
    sha256 "943104ad9864bde497c913b3f3fef64c3aba36859959505bff449290221dc64c"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.1/dotfiles_0.1.1_linux_armv6.tar.gz"
    sha256 "68f8aae6be06d2176b9597e0a6817975742a09810e760c59f1224a7c67a433ea"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/avakarev/dotfiles-cli/releases/download/0.1.1/dotfiles_0.1.1_linux_arm64.tar.gz"
    sha256 "54491f452016bbe7bcabe240997bc03866dde9e1cd86a90342ffd790f312f233"
  end

  def install
    bin.install "dotfiles"
  end
end
