require 'bitmap_editor'

describe AWB::Commands::HorizontalLine do
  describe '#draw' do
    describe 'within bounds' do
      let(:output) { `bin/bitmap_editor ./spec/fixtures/horizontal_line.txt` }
      it 'colors a horizontal line in the bitmap' do
        expect(output).to eq(<<~EOS
          OOOOO
          OOZZZ
          OOOOO
          OOOOO
          OOOOO
        EOS
        )
      end
    end

    describe 'out of bounds' do
      let(:output) { `bin/bitmap_editor ./spec/fixtures/horizontal_line_ob.txt` }
      it 'colors a horizontal line in the bitmap' do
        expect(output).to eq(<<~EOS
          OOOOO
          OOOOO
          OOOOO
          OOOOO
          OOOOO
        EOS
        )
      end
    end
  end
end
