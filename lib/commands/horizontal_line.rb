module AWB
  module Commands
    class HorizontalLine
      # H X1 X2 Y C
      def self.draw(params)
        matrix = File.read(AWB::OUTPUT_FILE)
        lines = matrix.split("\n")
        pos = *(params[1].to_i..params[2].to_i)

        pos.each do |v|
          lines[params[3].to_i - 1][v - 1] = params[4]
        end

        File.open(AWB::OUTPUT_FILE, 'w') { |f| f.write "#{lines.join("\n")}\n" }
      end
    end
  end
end