module AWB
  module Commands
    class Clear
      # C
      def self.draw(params)
        matrix = File.read(AWB::OUTPUT_FILE)
        File.open(AWB::OUTPUT_FILE, 'w') do |f|
          f.write matrix.gsub(/[^O\n]/, 'O')
        end
      end
    end
  end
end
