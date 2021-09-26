class BedrockViz < Formula
    desc "Minecraft Bedrock Edition World Visualization & Reporting Tool with Web App"
    homepage "https://github.com/bedrock-viz/bedrock-viz"
    url "https://github.com/bedrock-viz/bedrock-viz/releases/download/v0.1.5/bedrock-viz_v0.1.5_macOS.tar.gz"
    sha256 "450fc4f599eeb8b851ef1f1d067cea2f69c1d5768a716119894c21af29806690"
    head "https://github.com/bedrock-viz/bedrock-viz.git"
  
    version "v0.1.5"
  
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
