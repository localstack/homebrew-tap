# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class LocalstackCli < Formula
  desc "Localstack cli packaged using pyinstaller"
  homepage "https://github.com/localstack/localstack-cli"
  url "https://github.com/localstack/localstack-cli/archive/refs/tags/v4.0.0.tar.gz"
  version "4.0.0"
  sha256 "3d281b8254e875827c8915492b812b8b6ee338ccc6aba3db8cc437fcdc5c10b5"
  license "NOASSERTION"

  on_macos do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.0/localstack-cli-4.0.0-darwin-amd64.tar.gz"
      sha256 "073ee66b8fe437747e5186368c6e60dcf18e9f9dac3937cb73921f83c286e5ee"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.0/localstack-cli-4.0.0-darwin-arm64.tar.gz"
      sha256 "d5262bb0bc3ed4ed28d2b7e43a8ec8c62506d7552c22120256b52811e03722a4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.0/localstack-cli-4.0.0-linux-amd64.tar.gz"
      sha256 "1f8d537880035c843b017f0290455ac59a43a3b79513f012cddcbb7b8ac19a6c"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v4.0.0/localstack-cli-4.0.0-linux-arm64.tar.gz"
      sha256 "523714a19bd5d4536a4833b668cb458b20f1f07be059800312e3130710693560"
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
