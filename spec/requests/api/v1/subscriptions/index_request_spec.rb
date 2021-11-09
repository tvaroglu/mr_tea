require 'rails_helper'

# See spec/support/shared_examples/ for shared examples for tests where
# `include_examples` is used. See Shared Examples in the RSpec docs for more
# info:
#   https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples
#
# See spec/support/request_spec_helper.rb for #json and #json_data helpers.
describe 'Subscriptions::Index', type: :request do
  describe 'GET /api/v1/customers/:customer_id/subscriptions' do
    let!(:customer) { customer_with_subscription }
    let!(:subscription) { create(:subscription, status: 'Cancelled', customer: customer) }

    context 'when an existing customer wants to view their active and cancelled subscriptions' do
      before { get "/api/v1/customers/#{customer.id}/subscriptions" }

      it 'returns the subscriptions for the customer', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json_data.class).to eq Array
        expect(json_data.size).to eq 2

        json_data.each do |subscription|
          expect(subscription[:id].class).to eq String
          expect(subscription[:type]).to eq 'subscription'
          expect(subscription[:attributes].size).to eq 9
          expect(subscription[:attributes][:customer_id]).to eq customer.id
          expect(subscription[:attributes][:tea_id].class).to eq String
          expect(subscription[:attributes][:title].class).to eq String
          expect(subscription[:attributes][:description].class).to eq String
          expect(subscription[:attributes][:temperature].class).to eq Integer
          expect(subscription[:attributes][:brew_time].class).to eq Integer
          expect(subscription[:attributes][:price].class).to eq Float
          expect(subscription[:attributes][:frequency].class).to eq String
          expect(subscription[:attributes][:status].class).to eq String
        end
      end

      include_examples 'status code 200'
    end

    context 'when the customer does not exist' do
      let(:bad_customer_id) { customer.id + 1 }
      let(:errors) { ["Couldn't find Customer with 'id'=#{bad_customer_id}"] }

      before { get "/api/v1/customers/#{bad_customer_id}/subscriptions" }

      it 'returns an error that the customer cannot be found', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json[:errors]).to eq errors
      end

      include_examples 'status code 404'
    end

    context 'when a customer does not have any subscriptions' do
      let(:new_customer) { create(:customer) }

      before { get "/api/v1/customers/#{new_customer.id}/subscriptions" }

      it 'returns an empty array', :aggregate_failures do
        expect(json_data.class).to eq Array
      end

      include_examples 'returns nil data'
      include_examples 'status code 200'
    end
  end
end
