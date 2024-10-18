# generated by duploctl pipeline, do no edit
class Duploctl < Formula

  desc "Command line Client for interacting with Duplocloud portals."
  homepage "https://github.com/duplocloud/duploctl"
  version "0.2.37"
  license "MIT"
  base_url = "#{homepage}/releases/download/v#{version}"

  option "with-pip", "Use Brew PIP to install duploctl"

  if build.with? "pip"
    include Language::Python::Virtualenv
    url "#{base_url}/duplocloud_client-#{version}.tar.gz"
    sha256 "1300596515ef877eadda0b1fdb34b374321ae4c53bf2b67d336033dcd427582d"
    depends_on "python@3.12"
    
    resource "cachetools" do
      url "https://files.pythonhosted.org/packages/c3/38/a0f315319737ecf45b4319a8cd1f3a908e29d9277b46942263292115eee7/cachetools-5.5.0.tar.gz"
      sha256 "2cc24fb4cbe39633fb7badd9db9ca6295d766d9c2995f245725a46715d050f2a"
    end
    
    resource "certifi" do
      url "https://files.pythonhosted.org/packages/b0/ee/9b19140fe824b367c04c5e1b369942dd754c4c5462d5674002f75c4dedc1/certifi-2024.8.30.tar.gz"
      sha256 "bec941d2aa8195e248a60b31ff9f0558284cf01a52591ceda73ea9afffd69fd9"
    end
    
    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/f2/4f/e1808dc01273379acc506d18f1504eb2d299bd4131743b9fc54d7be4df1e/charset_normalizer-3.4.0.tar.gz"
      sha256 "223217c3d4f82c3ac5e29032b3f1c2eb0fb591b72161f86d93f5719079dae93e"
    end
    
    resource "idna" do
      url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
      sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
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
      url "https://files.pythonhosted.org/packages/54/ed/79a089b6be93607fa5cdaedf301d7dfb23af5f25c398d5ead2525b063e17/pyyaml-6.0.2.tar.gz"
      sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
    end
    
    resource "requests" do
      url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
      sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
    end
    
    resource "urllib3" do
      url "https://files.pythonhosted.org/packages/ed/63/22ba4ebfe7430b76388e7cd448d5478814d3032121827c12a2cc287e2260/urllib3-2.2.3.tar.gz"
      sha256 "e7d814a81dad81e6caf2ec9fdedb284ecc9c73076b62654547cc64ccdcae26e9"
    end
    
    def install
      virtualenv_install_with_resources
    end
  else
    on_macos do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "#{base_url}/duploctl-#{version}-darwin-arm64.tar.gz"
        sha256 "095d56e356de3f7052f24e6f11b76c57c5de3cb246bee0fde78c16dc93f11f47"
      end
      if Hardware::CPU.intel?
        url "#{base_url}/duploctl-#{version}-darwin-amd64.tar.gz"
        sha256 "272106cbcf2d217ea9cf691eb3ad37943fa9cc0d118339d4311878662997be05"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "#{base_url}/duploctl-#{version}-linux-arm64.tar.gz"
        sha256 "ca61be9076aca4eacfebdb2520978296241d7be76d1a4e3d812a9efa270c5fc2"
      end
      if Hardware::CPU.intel?
        url "#{base_url}/duploctl-#{version}-linux-amd64.tar.gz"
        sha256 "ee4901ad0adf3c7b17110b417d8ef5cde92fa0e80ba7dd5275305abdd088f1e1"
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
