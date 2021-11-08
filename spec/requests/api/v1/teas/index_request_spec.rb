require 'rails_helper'

# See spec/support/shared_examples/ for shared examples for tests where
# `include_examples` is used. See Shared Examples in the RSpec docs for more
# info:
#   https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples
#
# See spec/support/request_spec_helper.rb for #json and #json_data helpers.
describe 'Teas::Index', type: :request do
  describe 'GET /api/v1/teas', :vcr do
    context 'when the user is looking to retrieve a list of teas' do
      before { get '/api/v1/teas' }

      it 'return a list of serialized teas from the third party API', :aggregate_failures do
        expect(json).not_to be_empty

        json_data.each do |tea_obj|
          expect(tea_obj[:id].class).to eq String
          expect(tea_obj[:type]).to eq 'tea'
          expect(tea_obj[:attributes].size).to eq 4
          expect(tea_obj[:attributes][:name].class).to eq String
          expect(tea_obj[:attributes][:description].class).to eq String
          expect(tea_obj[:attributes][:temperature].class).to eq Integer
          expect(tea_obj[:attributes][:brew_time].class).to eq Integer
        end
      end

      include_examples 'status code 200'
    end
  end
end
