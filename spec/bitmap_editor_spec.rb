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
      describe 'Final' do
        let(:output) { `bin/bitmap_editor ./spec/fixtures/final.txt` }
        it 'shows an M x N final bitmap' do
          expect(output).to eq(<<~EOS
            OOOOO
            OOZZZ
            AWOOO
            OWOOO
            OWOOO
            OWOOO
          EOS
          )
        end
      end
    end
  end
end
