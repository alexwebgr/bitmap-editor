require 'bitmap_editor'

describe AWB::Commands::Clear do
  describe '#draw' do
    let(:output) { `bin/bitmap_editor ./spec/fixtures/color_dot.txt` }
    it 'colors a dot in the bitmap' do
      expect(output).to eq(<<~EOS
          OOOOO
          OOOOO
          AOOOO
          OOOOO
          OOOOO
          OOOOO
        EOS
        )
    end
  end
end
