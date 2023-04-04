class DuploJit < Formula
    desc "Command-line tools for JIT Duplo, AWS and Kubernetes access"
    homepage "https://github.com/duplocloud/duplo-jit"
    version "0.5.2"
    license "https://github.com/duplocloud/duplo-jit/blob/develop/LICENSE"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.2/duplo-jit_0.5.2_darwin_arm64.zip"
        sha256 "874b233630af3e85093b8aca09789a90fb2d58b0becc434c57fb5f6785f9f601"
  
        def install
          bin.install "duplo-jit"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/duplocloud/duplo-jit/releases/download/v0.5.2/duplo-jit_0.5.2_darwin_amd64.zip"
        sha256 "2d7d79ae3c9b385fa0719ae829693cf3329f653685bfe87e7a564f837ba50048"
  
        def install
          bin.install "duplo-jit"
        end
      end
    end
  
    test do
      system "duplo-jit version"
    end
  end
  