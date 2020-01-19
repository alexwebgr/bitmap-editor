module AWB
  module Commands
    class VerticalLine
      # V X Y1 Y2 C
      def self.draw(params)
        matrix = File.read(AWB::OUTPUT_FILE)
        lines = matrix.split("\n")
        pos = *(params[2].to_i..params[3].to_i)

        pos.each do |v|
          lines[v - 1][params[1].to_i - 1] = params[4] if lines[v - 1] && lines[v - 1][params[1].to_i - 1]
        end

        File.open(AWB::OUTPUT_FILE, 'w') { |f| f.write "#{lines.join("\n")}\n" }
      end
    end
  end
end