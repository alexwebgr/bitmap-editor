require 'bitmap_editor'

describe AWB::Commands::HorizontalLine do
  describe '#draw' do
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
end
