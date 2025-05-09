# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DuploJit < Formula
  desc "Command-line tools for JIT Duplo, AWS and Kubernetes access"
  homepage "https://github.com/duplocloud/duplo-jit"
  version "0.5.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.7/duplo-jit_0.5.7_darwin_amd64.zip"
      sha256 "8001d05f7cedd40b6277d96e635f96a29a39c620f7bc38fac6c1fb5b92eef35c"

      def install
        bin.install "duplo-aws-credential-process"
        bin.install "duplo-jit"
      end
    end
    on_arm do
      url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.7/duplo-jit_0.5.7_darwin_arm64.zip"
      sha256 "4af2000962d753464aacd0307a535f1213150fd9b6101bc55b63d840443099ec"

      def install
        bin.install "duplo-aws-credential-process"
        bin.install "duplo-jit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.7/duplo-jit_0.5.7_linux_amd64.zip"
        sha256 "551bb02d9513afe495ca1c3c0ff31d7de0542ace9370bf2a16a7f1254a181e4d"

        def install
          bin.install "duplo-aws-credential-process"
          bin.install "duplo-jit"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.7/duplo-jit_0.5.7_linux_arm.zip"
        sha256 "208063f84e7bb63e6db62a56e9b4121b07965934c0f36cad377f10c93f8468f2"

        def install
          bin.install "duplo-aws-credential-process"
          bin.install "duplo-jit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.7/duplo-jit_0.5.7_linux_arm64.zip"
        sha256 "34d377da3d564f40016373d83e721b5c23040d83cb730e6048c879d5c4daa4c7"

        def install
          bin.install "duplo-aws-credential-process"
          bin.install "duplo-jit"
        end
      end
    end
  end

  test do
    system "duplo-jit version"
  end
end
