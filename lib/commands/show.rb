module AWB
  module Commands
    class Show
      # S
      def self.draw(params)
        print File.read(AWB::OUTPUT_FILE)
      end
    end
  end
end