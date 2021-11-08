require 'rails_helper'

describe 'TeaSerializer', type: :service do
  describe 'class methods' do
    describe '::base_url' do
      it 'returns the base url for third party API calls', :aggregate_failures do
        expect(TeaService.base_url).to eq 'https://tea-api-vic-lo.herokuapp.com'
      end
    end

    describe '::conn' do
      it 'can establish a Faraday connection for the full url for third party API calls', :aggregate_failures do
        expected = TeaService.conn

        expect(expected.class).to eq Faraday::Connection
        expect(expected.url_prefix.class).to eq URI::HTTPS
      end
    end

    describe '::get_teas', :vcr do
      it 'returns a list of teas from the third party API', :aggregate_failures do
        expected = TeaService.get_teas

        expect(expected.class).to eq Array
        expect(expected).not_to be_empty
      end
    end
  end
end
