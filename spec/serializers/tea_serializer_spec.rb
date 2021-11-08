require 'rails_helper'

describe 'TeaSerializer', type: :serializer do
  describe 'instance methods' do
    describe '#format_teas' do
      context 'when I provide valid teas' do
        let(:tea_1) do
          {
            '_id': '5fa3fd48d5ba620017ec1c09',
            'name': 'green',
            'image': 'uploads/green.png',
            'description': 'Rich in antioxidants and reduces inflammation.',
            'keywords': 'aroma, calm, china',
            'origin': 'China',
            'brew_time': 2,
            'temperature': 80
          }
        end

        let(:tea_2) do
          {
            '_id': '5fa3fdb0d5ba620017ec1c0a',
            'name': 'black',
            'image': 'uploads/black.png',
            'description': 'Boosts heart health and lowers cholesterol.',
            'keywords': 'bitter, rich, china',
            'origin': 'China',
            'brew_time': 3,
            'temperature': 85
          }
        end

        let!(:teas) { TeaSerializer.format_teas([Tea.new(tea_1), Tea.new(tea_2)]) }

        it 'formats the teas response for delivery', :aggregate_failures do
          expect(teas.class).to eq Hash
          expect(teas.size).to eq 1

          expect(teas).to have_key :data

          expect(teas[:data].class).to eq Array
          expect(teas[:data].size).to eq 2

          teas[:data].each do |tea|
            expect(tea.class).to eq Hash
            expect(tea[:id].class).to eq String
            expect(tea[:type]).to eq 'tea'
            expect(tea[:attributes].size).to eq 3
            expect(tea[:attributes][:description].class).to eq String
            expect(tea[:attributes][:temperature].class).to eq Integer
            expect(tea[:attributes][:brew_time].class).to eq Integer
          end
        end
      end
    end
  end
end
