class BedrockViz < Formula
    desc "Minecraft Bedrock Edition World Visualization & Reporting Tool with Web App"
    homepage "https://github.com/bedrock-viz/bedrock-viz"
    url "https://github.com/bedrock-viz/bedrock-viz/releases/download/v0.1.1/bedrock-viz_v0.1.1.tar.gz"
    sha256 "80a0772c5e43d9f62f1830e6e012f9d7cfca9da7aee68f0dbb5e6918f4d253ef"
    head "https://github.com/bedrock-viz/bedrock-viz.git"
  
    version "v0.1.1"
  
    depends_on "cmake" => :build
    depends_on "libpng"
    depends_on "libxml2"
  
    def install
      mkdir "build" do
        system "cmake", "..", *std_cmake_args
        system "make"
        system "make", "install"
      end
    end
  
    test do
      # assert_match "Hello, World!", shell_output("#{bin}/helloworld", 255)
      system "#{bin}/bedrock-viz"
    end
  end
