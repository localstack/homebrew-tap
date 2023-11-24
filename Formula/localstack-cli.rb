# typed: true
# frozen_string_literal: true

# This file was generated by Homebrew Releaser. DO NOT EDIT.
class LocalstackCli < Formula
  desc "Localstack cli packaged using pyinstaller"
  homepage "https://github.com/localstack/localstack-cli"
  url "https://github.com/localstack/localstack-cli/archive/refs/tags/v3.0.1.tar.gz"
  sha256 "042c7c54aa4dabc32aa91ab16722c12fc33b395415a63a107694da1e3596f3d4"
  license "NOASSERTION"

  on_macos do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v3.0.1/localstack-cli-3.0.1-darwin-amd64.tar.gz"
      sha256 "ff79605b01f9004f73e3592ce4a0170ee90d1468307f51576d393dc267152a05"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v3.0.1/localstack-cli-3.0.1-darwin-arm64.tar.gz"
      sha256 "454ba5b0fcfbe03816cd0e5875175ad6377c2ed682b296011888f7ac2208c42c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/localstack/localstack-cli/releases/download/v3.0.1/localstack-cli-3.0.1-linux-amd64.tar.gz"
      sha256 "ebb9987d12ccd4635d51c0a27919725fbd1379dc0de2446f0f33b408401ef65e"
    end

    on_arm do
      url "https://github.com/localstack/localstack-cli/releases/download/v3.0.1/localstack-cli-3.0.1-linux-arm64.tar.gz"
      sha256 "1d29a340bb443d0360d9ab93295e474721f1f26409b51d245d9abf4fc0d5f700"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"localstack"
  end

  test do
    assert_match /LocalStack Command Line Interface/, shell_output("#{bin}/localstack --help", 0)
  end
end
