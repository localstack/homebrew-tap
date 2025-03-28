# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class LocalstackCli < Formula
  desc "Localstack cli packaged using pyinstaller"
  homepage "https://github.com/localstack/localstack-cli"
  url "https://github.com/localstack/localstack-cli/archive/refs/tags/v4.3.0.tar.gz"
  version "4.3.0"
  sha256 "d3120de26b6dffcefa0db92e6b6a5178d3a7103d5a989755d44f73900fbaf9ca"
  license "NOASSERTION"

  on_macos do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.3.0/localstack-cli-4.3.0-darwin-amd64.tar.gz"
      sha256 "412849a711281732938c7a62f80c8d16a8303769c8e4efcc86b8d3bba1db4eec"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.3.0/localstack-cli-4.3.0-darwin-arm64.tar.gz"
      sha256 "c0a865f36cea339d9ab7f8e20bf753e8e90ba2649513d5f9051a69a8c3f1895e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.3.0/localstack-cli-4.3.0-linux-amd64.tar.gz"
      sha256 "ebf7d68e0fccd83649285e2eedc5d998f4a6cfbcd08cd212fa797bb00050eb32"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.3.0/localstack-cli-4.3.0-linux-arm64.tar.gz"
      sha256 "8d6816251cd4127849b7e0e6b1fe692fcd4b40fd9623486172763718940eabe4"
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
