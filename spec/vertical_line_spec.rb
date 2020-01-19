require 'bitmap_editor'

describe AWB::Commands::VerticalLine do
  describe '#draw' do
    describe 'within bounds' do
      let(:output) { `bin/bitmap_editor ./spec/fixtures/vertical_line.txt` }
      it 'colors a vertical line in the bitmap' do
        expect(output).to eq(<<~EOS
            OOOOO
            OOOOO
            OWOOO
            OWOOO
            OWOOO
          EOS
          )
      end
    end

    describe 'out of bounds' do
      let(:output) { `bin/bitmap_editor ./spec/fixtures/vertical_line_ob.txt` }
      it 'colors a vertical line in the bitmap' do
        expect(output).to eq(<<~EOS
            OOOOO
            OOOOO
            OWOOO
            OWOOO
            OWOOO
          EOS
          )
      end
    end
  end
end
