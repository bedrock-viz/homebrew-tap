class BedrockViz < Formula
    desc "Minecraft Bedrock Edition World Visualization & Reporting Tool with Web App"
    homepage "https://github.com/bedrock-viz/bedrock-viz"
    url "https://github.com/bedrock-viz/bedrock-viz/releases/download/v0.1.3/bedrock-viz_v0.1.3_macOS.tar.gz"
    sha256 "cbeeb9df7305f9c5dc14f040917789e44a4cf7b35b92fc5e4bd70b9f38ce3523"
    head "https://github.com/bedrock-viz/bedrock-viz.git"
  
    version "v0.1.3"
  
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
