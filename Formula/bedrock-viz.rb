class BedrockViz < Formula
    desc "Minecraft Bedrock Edition World Visualization & Reporting Tool with Web App"
    homepage "https://github.com/bedrock-viz/bedrock-viz"
    url "https://github.com/bedrock-viz/bedrock-viz/releases/download/v0.1.2/bedrock-viz_v0.1.2_macOS.tar.gz"
    sha256 "520128b816c3a6d81f0945589b1ac6d36842e5ae9f910fac6818c3ee8863254a"
    head "https://github.com/bedrock-viz/bedrock-viz.git"
  
    version "v0.1.2"
  
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
