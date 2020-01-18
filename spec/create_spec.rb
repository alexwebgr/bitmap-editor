require 'bitmap_editor'

describe AWB::Commands::Create do
  describe '#draw' do
    describe 'within bounds' do
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

    describe 'out of bounds' do
      let(:output) {AWB::BitmapEditor.new.run('./spec/fixtures/create_ob_r.txt') }
      it 'shows an error when out of bounds' do
        expect {output}.to raise_error(ArgumentError)
      end

      let(:output) {AWB::BitmapEditor.new.run('./spec/fixtures/create_ob_l.txt') }
      it 'shows an error when out of bounds' do
        expect {output}.to raise_error(ArgumentError)
      end
    end
  end
end
