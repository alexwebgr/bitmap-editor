require 'bitmap_editor'

describe AWB::Commands::Create do
  describe '#draw' do
    let(:output) { `bin/bitmap_editor ./spec/fixtures/create.txt` }
    it 'shows an M x N bitmap' do
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
