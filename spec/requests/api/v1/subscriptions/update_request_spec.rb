require 'rails_helper'

# See spec/support/shared_examples/ for shared examples for tests where
# `include_examples` is used. See Shared Examples in the RSpec docs for more
# info:
#   https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples
#
# See spec/support/request_spec_helper.rb for #json and #json_data helpers.
describe 'Subscriptions::Update', type: :request do
  describe 'PATCH /api/v1/customers/:customer_id/subscriptions/:id' do
    let(:customer) { customer_with_subscription }
    let(:subscription) { customer.subscriptions.first }

    context 'when an existing customer wants to cancel an active subscription' do
      before { patch "/api/v1/customers/#{customer.id}/subscriptions/#{subscription.id}", params: { status: 'Cancelled' } }

      it 'cancels the subscription for the customer', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json_data.size).to eq 3

        expect(json_data[:attributes].size).to eq 9
        expect(json_data[:attributes][:customer_id]).to eq subscription.customer_id
        expect(json_data[:attributes][:tea_id]).to eq subscription.tea_id
        expect(json_data[:attributes][:title]).to eq subscription.title
        expect(json_data[:attributes][:description]).to eq subscription.description
        expect(json_data[:attributes][:temperature]).to eq subscription.temperature
        expect(json_data[:attributes][:brew_time]).to eq subscription.brew_time
        expect(json_data[:attributes][:price]).to eq subscription.price
        expect(json_data[:attributes][:frequency]).to eq subscription.frequency
        expect(json_data[:attributes][:status]).not_to eq subscription.status
      end

      include_examples 'status code 200'
    end

    context 'when the customer does not exist' do
      let(:bad_customer_id) { customer.id + 1 }
      let(:errors) { ["Couldn't find Customer with 'id'=#{bad_customer_id}"] }

      before { patch "/api/v1/customers/#{bad_customer_id}/subscriptions/#{subscription.id}", params: {} }

      it 'returns an error that the customer cannot be found', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json[:errors]).to eq errors
      end

      include_examples 'status code 404'
    end

    context 'when the subscription does not exist' do
      let(:bad_subscription_id) { subscription.id + 1 }
      let(:errors) { ["Couldn't find Subscription with 'id'=#{bad_subscription_id}"] }

      before { patch "/api/v1/customers/#{customer.id}/subscriptions/#{bad_subscription_id}", params: {} }

      it 'returns an error that the subscription cannot be found', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json[:errors]).to eq errors
      end

      include_examples 'status code 404'
    end

    context 'when the params are invalid' do
      let(:errors) { ["'foo' is not a valid status"] }

      before { patch "/api/v1/customers/#{customer.id}/subscriptions/#{subscription.id}", params: { status: 'foo' } }

      it 'returns error messages', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json[:errors]).to eq errors
      end

      include_examples 'status code 422'
    end
  end
end
