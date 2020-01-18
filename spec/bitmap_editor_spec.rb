require 'bitmap_editor'

describe AWB::BitmapEditor do
  describe '#run' do
    context 'incorrect file' do
      let(:output) { `bin/bitmap_editor ./spec/fixtures/non.txt` }
      it 'raise error' do
        expect(output).to eq('please provide correct file')
      end
    end

    context 'correct file' do
      let(:output) { `bin/bitmap_editor ./spec/fixtures/create.txt` }
      it 'shows an M x N final bitmap' do
        expect(output).to eq(<<~EOS
OOOOO
OOOOO
OOOOO
OOOOO
OOOOO
        EOS
        )
      end

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
end
