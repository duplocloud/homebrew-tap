# generated by duploctl pipeline, do no edit
class Duploctl < Formula

  desc "Command line Client for interacting with Duplocloud portals."
  homepage "https://github.com/duplocloud/duploctl"
  version "0.2.32"
  license "MIT"
  base_url = "#{homepage}/releases/download/v#{version}"

  option "with-pip", "Use Brew PIP to install duploctl"

  if build.with? "pip"
    include Language::Python::Virtualenv
    url "#{base_url}/duplocloud_client-#{version}.tar.gz"
    sha256 "b4a91fd87e19c0b03fe1a5f69c616a99ccbba917616a9b6960b6f832aa91c1ef"
    depends_on "python@3.12"
    
    resource "cachetools" do
      url "https://files.pythonhosted.org/packages/a7/3f/ea907ec6d15f68ea7f381546ba58adcb298417a59f01a2962cb5e486489f/cachetools-5.4.0.tar.gz"
      sha256 "b8adc2e7c07f105ced7bc56dbb6dfbe7c4a00acce20e2227b3f355be89bc6827"
    end
    
    resource "certifi" do
      url "https://files.pythonhosted.org/packages/c2/02/a95f2b11e207f68bc64d7aae9666fed2e2b3f307748d5123dffb72a1bbea/certifi-2024.7.4.tar.gz"
      sha256 "5a1e7645bc0ec61a09e26c36f6106dd4cf40c6db3a1fb6352b0244e7fb057c7b"
    end
    
    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/63/09/c1bc53dab74b1816a00d8d030de5bf98f724c52c1635e07681d312f20be8/charset-normalizer-3.3.2.tar.gz"
      sha256 "f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5"
    end
    
    resource "idna" do
      url "https://files.pythonhosted.org/packages/21/ed/f86a79a07470cb07819390452f178b3bef1d375f2ec021ecfc709fc7cf07/idna-3.7.tar.gz"
      sha256 "028ff3aadf0609c1fd278d8ea3089299412a7a8b9bd005dd08b9f8285bcb5cfc"
    end
    
    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
      sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end
    
    resource "jsonpatch" do
      url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
      sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
    end
    
    resource "jsonpointer" do
      url "https://files.pythonhosted.org/packages/6a/0a/eebeb1fa92507ea94016a2a790b93c2ae41a7e18778f85471dc54475ed25/jsonpointer-3.0.0.tar.gz"
      sha256 "2b2d729f2091522d61c3b31f82e11870f60b68f43fbc705cb76bf4b832af59ef"
    end
    
    resource "PyJWT" do
      url "https://files.pythonhosted.org/packages/fb/68/ce067f09fca4abeca8771fe667d89cc347d1e99da3e093112ac329c6020e/pyjwt-2.9.0.tar.gz"
      sha256 "7e1e5b56cc735432a7369cbfa0efe50fa113ebecdc04ae6922deba8b84582d0c"
    end
    
    resource "PyYAML" do
      url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
      sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
    end
    
    resource "requests" do
      url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
      sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
    end
    
    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/43/6d/fa469ae21497ddc8bc93e5877702dca7cb8f911e337aca7452b5724f1bb6/urllib3-2.2.2.tar.gz"
      sha256 "dd505485549a7a552833da5e6063639d0d177c04f23bc3864e41e5dc5f612168"
    end
    
    def install
      virtualenv_install_with_resources
    end
  else
    on_macos do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "#{base_url}/duploctl-#{version}-darwin-arm64.tar.gz"
        sha256 "b13366a270ad08c7a0dd5c94c7a09a4b7cd7a67e129efea43d824eeae938a7a2"
      end
      if Hardware::CPU.intel?
        url "#{base_url}/duploctl-#{version}-darwin-amd64.tar.gz"
        sha256 "4324ccebca82c150572e26e8310876354898578d9ece664aaf76c6aebbb790e1"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "#{base_url}/duploctl-#{version}-linux-arm64.tar.gz"
        sha256 "94f957d60b06e5410ea10449d1a23f3e9c00a74d955adbeeae9ef5f84f23f50a"
      end
      if Hardware::CPU.intel?
        url "#{base_url}/duploctl-#{version}-linux-amd64.tar.gz"
        sha256 "7eb382fd2fc37ce23d379589f350c50a83aea85e739d5bd225de07414f8b5a10"
      end
    end
  
    def install
      bin.install "duploctl"
    end
  end

  test do
    system "duploctl --version"
  end
end
