module AWB
  module Commands
    class Create
      def self.draw(params)
        bitmap = ''
        matrix = Array.new(params[1].to_i) {Array.new(params[2].to_i, AWB::DEFAULT_COLOR)}

        matrix.each do |item|
          bitmap += "#{item.join}\n"
        end

        File.open(AWB::OUTPUT_FILE, 'w') { |f| f.write bitmap }
      end
    end
  end
end