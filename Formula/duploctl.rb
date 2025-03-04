# generated by duploctl pipeline, do no edit
class Duploctl < Formula

  desc "Command line Client for interacting with Duplocloud portals."
  homepage "https://github.com/duplocloud/duploctl"
  version "0.2.46"
  license "MIT"
  base_url = "#{homepage}/releases/download/v#{version}"

  option "with-pip", "Use Brew PIP to install duploctl"

  if build.with? "pip"
    include Language::Python::Virtualenv
    url "#{base_url}/duplocloud_client-#{version}.tar.gz"
    sha256 "c5b28b5c313d8b87db4cb7ba1382b7faf6fde29118141db60599d3934d5ff2df"
    depends_on "python@3.12"
    
    resource "cachetools" do
      url "https://files.pythonhosted.org/packages/6c/81/3747dad6b14fa2cf53fcf10548cf5aea6913e96fab41a3c198676f8948a5/cachetools-5.5.2.tar.gz"
      sha256 "1a661caa9175d26759571b2e19580f9d6393969e5dfca11fdb1f947a23e640d4"
    end
    
    resource "certifi" do
      url "https://files.pythonhosted.org/packages/1c/ab/c9f1e32b7b1bf505bf26f0ef697775960db7932abeb7b516de930ba2705f/certifi-2025.1.31.tar.gz"
      sha256 "3d5da6925056f6f18f119200434a4780a94263f10d1c21d032a6f6b2baa20651"
    end
    
    resource "charset-normalizer" do
      url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
      sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
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
      url "https://files.pythonhosted.org/packages/e7/46/bd74733ff231675599650d3e47f361794b22ef3e3770998dda30d3b63726/pyjwt-2.10.1.tar.gz"
      sha256 "3cc5772eb20009233caf06e9d8a0577824723b44e6648ee0a2aedb6cf9381953"
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
      url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
      sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
    end
    
    def install
      virtualenv_install_with_resources
    end
  else
    on_macos do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "#{base_url}/duploctl-#{version}-darwin-arm64.tar.gz"
        sha256 "d90cf4d89646131723a55a2b53209ced892f71a61dce87b960ac4c06018d1252"
      end
      if Hardware::CPU.intel?
        url "#{base_url}/duploctl-#{version}-darwin-amd64.tar.gz"
        sha256 "75976e0da08ed2104b309fd47bcd6ea883ea4d3d6a8c8079256f729bcf1b74f0"
      end
    end
  
    on_linux do
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        url "#{base_url}/duploctl-#{version}-linux-arm64.tar.gz"
        sha256 "70c97a1d73c5fa28f9ee993e3612c60bb9ba34d5045f009e192620a6fe9386b0"
      end
      if Hardware::CPU.intel?
        url "#{base_url}/duploctl-#{version}-linux-amd64.tar.gz"
        sha256 "90f045232a732e0cb64b0cca69e32c2012b027ae404991356b8bd69c45680788"
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
