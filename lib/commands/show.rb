module AWB
  module Commands
    class Show
      def self.draw(params)
        print File.read(AWB::OUTPUT_FILE)
      end
    end
  end
end