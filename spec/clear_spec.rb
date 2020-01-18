require 'bitmap_editor'

describe AWB::Commands::Clear do
  describe '#draw' do
    let(:output) { `bin/bitmap_editor ./spec/fixtures/clear.txt` }
    it 'resets the bitmap' do
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
