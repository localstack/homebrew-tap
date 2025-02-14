# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class LocalstackCli < Formula
  desc "Localstack cli packaged using pyinstaller"
  homepage "https://github.com/localstack/localstack-cli"
  url "https://github.com/localstack/localstack-cli/archive/refs/tags/v4.1.1.tar.gz"
  version "4.1.1"
  sha256 "5b4cc1b0ffa083a0e2d1d52da1b8693285821a43c642e271d523ac716b4bf5ac"
  license "NOASSERTION"

  on_macos do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.1.1/localstack-cli-4.1.1-darwin-amd64.tar.gz"
      sha256 "a3a4fba35e295761f7c9dd8cd59011bce53f57d3808177efaed63703eab31c0a"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.1.1/localstack-cli-4.1.1-darwin-arm64.tar.gz"
      sha256 "1259a041e34b56f38cb19994471be39241241f433a84256cdb5753f7c0054c41"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.1.1/localstack-cli-4.1.1-linux-amd64.tar.gz"
      sha256 "73c8a31df25bfe95000c51e773413a71af66764afb60c9bf4ec13c581dc56f1c"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.1.1/localstack-cli-4.1.1-linux-arm64.tar.gz"
      sha256 "affffd0d98cf4c42a7bcefc03b6579d213bb9f2e31b92eb1ae51967656622968"
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
