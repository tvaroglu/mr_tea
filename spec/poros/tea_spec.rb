require 'rails_helper'

describe 'TeaSerializer', type: :poro do
  describe 'instance methods' do
    describe '#initialize' do
      context 'when I provide a tea response object' do
        let(:tea_response) do
          {
            _id: '5fa3fd48d5ba620017ec1c09',
            name: 'green',
            image: 'uploads/green.png',
            description: 'Rich in antioxidants and reduces inflammation.',
            keywords: 'aroma, calm, china',
            origin: 'China',
            brew_time: 2,
            temperature: 80
          }
        end

        it 'creates a valid tea with valid attributes', :aggregate_failures do
          tea = Tea.new(tea_response)

          expect(tea.class).to eq Tea
          expect(tea.id).to eq tea_response[:_id]
          expect(tea.name).to eq tea_response[:name]
          expect(tea.description).to eq tea_response[:description]
          expect(tea.temperature).to eq tea_response[:temperature]
          expect(tea.brew_time).to eq tea_response[:brew_time]
        end
      end
    end
  end
end
