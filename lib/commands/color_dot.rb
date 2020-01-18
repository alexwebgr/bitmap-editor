module AWB
  module Commands
    class ColorDot
      def self.draw(params)
        matrix = File.read(AWB::OUTPUT_FILE)
        lines = matrix.split("\n")
        lines[params[2].to_i - 1][params[1].to_i - 1] = params[3]

        File.open(AWB::OUTPUT_FILE, 'w') { |f| f.write "#{lines.join("\n")}\n" }
      end
    end
  end
end