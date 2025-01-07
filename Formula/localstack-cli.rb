# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class LocalstackCli < Formula
  desc "Localstack cli packaged using pyinstaller"
  homepage "https://github.com/localstack/localstack-cli"
  url "https://github.com/localstack/localstack-cli/archive/refs/tags/v4.0.1.tar.gz"
  version "4.0.1"
  sha256 "979dff72ba8e5d3062ad232511f5a4d3ad768f684bc7372562e0fcb658c062ed"
  license "NOASSERTION"

  on_macos do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.1/localstack-cli-4.0.1-darwin-amd64.tar.gz"
      sha256 "0ef42e10d66c62bf1e2263c1560f6d11b8a9979afd6b6f0555d5c51823dc2772"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.1/localstack-cli-4.0.1-darwin-arm64.tar.gz"
      sha256 "f3750fa7b6fc72759a4fed18fcdc67de9d76440f5b5aaadc4324442b71c563b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.1/localstack-cli-4.0.1-linux-amd64.tar.gz"
      sha256 "7f2d772140033eea3ae3cb6e021b502119d67ebb9433fa8848b7077636cdd77d"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.1/localstack-cli-4.0.1-linux-arm64.tar.gz"
      sha256 "965cbceeef2260a5c9882d5697a01c5c876671db9feb10d40d2c03384c59697b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"localstack"
    generate_completions_from_executable(bin/"localstack", "completion")
  end

  test do
    assert_match /LocalStack Command Line Interface/, shell_output("#{bin}/localstack --help", 0)
  end
end
