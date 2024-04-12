# generated by duploctl pipeline, do no edit
class Duploctl < Formula

  desc "Command line Client for interacting with Duplocloud portals."
  homepage "https://github.com/duplocloud/duploctl"
  version "0.2.22"
  license "MIT"
  base_url = "#{homepage}/releases/download/v#{version}"

  option "with-pip", "Use Brew PIP to install duploctl"

  if build.with? "pip"
    include Language::Python::Virtualenv
    url "#{base_url}/duplocloud_client-#{version}.tar.gz"
    sha256 "f974babd4d89080abac28b8c0ec6b358c832e39d0b4b526d79a8ac2b7640d73d"
    depends_on "python@3.12"
    
    resource "requests" do
      url "https://files.pythonhosted.org/packages/9d/be/10918a2eac4ae9f02f6cfe6414b7a155ccd8f7f9d4380d62fd5b955065c3/requests-2.31.0.tar.gz"
      sha256 "942c5a758f98d790eaed1a29cb6eefc7ffb0d1cf7af05c3d2791656dbd6ad1e1"
    end
  
    resource "cachetools" do
      url "https://files.pythonhosted.org/packages/b3/4d/27a3e6dd09011649ad5210bdf963765bc8fa81a0827a4fc01bafd2705c5b/cachetools-5.3.3.tar.gz"
      sha256 "ba29e2dfa0b8b556606f097407ed1aa62080ee108ab0dc5ec9d6a723a007d105"
    end
  
    resource "jmespath" do
      url "https://files.pythonhosted.org/packages/00/2a/e867e8531cf3e36b41201936b7fa7ba7b5702dbef42922193f05c8976cd6/jmespath-1.0.1.tar.gz"
      sha256 "90261b206d6defd58fdd5e85f478bf633a2901798906be2ad389150c5c60edbe"
    end
  
    resource "pyyaml" do
      url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
      sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
    end
  
    resource "jsonpatch" do
      url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
      sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
    end
  
    resource "pyjwt" do
      url "https://files.pythonhosted.org/packages/30/72/8259b2bccfe4673330cea843ab23f86858a419d8f1493f66d413a76c7e3b/PyJWT-2.8.0.tar.gz"
      sha256 "57e28d156e3d5c10088e0c68abb90bfac3df82b40a71bd0daa20c65ccd5c23de"
    end
  
    resource "jsonpointer" do
      url "https://files.pythonhosted.org/packages/8f/5e/67d3ab449818b629a0ffe554bb7eb5c030a71f7af5d80fbf670d7ebe62bc/jsonpointer-2.4.tar.gz"
      sha256 "585cee82b70211fa9e6043b7bb89db6e1aa49524340dde8ad6b63206ea689d88"
    end
  
    def install
      virtualenv_install_with_resources
    end
  else
    on_macos do
      url "#{base_url}/duploctl-#{version}-darwin-amd64.tar.gz"
      sha256 "5123a8a6e55a5baac9630e6e314e01d4089e2f5c34f36f6e7792c2ec3c1cab86"
    end
  
    on_linux do
      url "#{base_url}/duploctl-#{version}-linux-amd64.tar.gz"
      sha256 "b4c0fba369fdaf331ad040bc701d258fb2f2d1c33967e05eb4f294dae9af3f32"
    end
  
    def install
      bin.install "duploctl"
    end
  end

  test do
    system "duploctl --version"
  end
end
