require 'rails_helper'

# See spec/support/shared_examples/ for shared examples for tests where
# `include_examples` is used. See Shared Examples in the RSpec docs for more
# info:
#   https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples
#
# See spec/support/request_spec_helper.rb for #json and #json_data helpers.
describe 'Subscriptions::Create', type: :request do
  describe 'POST /api/v1/customers/:customer_id/subscriptions' do
    context 'when an existing customer wants to create a new subscription with valid attributes' do
      let(:customer) { create(:customer) }

      let(:tea) do
        Tea.new({
                  _id: '5fa3fd48d5ba620017ec1c09',
                  name: 'green',
                  description: 'Rich in antioxidants and reduces inflammation.',
                  brew_time: 2,
                  temperature: 80
                })
      end

      let(:valid_attributes) do
        {
          title: tea.name,
          description: tea.description,
          temperature: tea.temperature,
          brew_time: tea.brew_time,
          tea_id: tea.id,
          price: Faker::Number.decimal(l_digits: 2),
          frequency: %w[Weekly Monthly Annually].sample,
          status: 'Active',
          customer_id: customer.id
        }
      end

      before { post "/api/v1/customers/#{customer.id}/subscriptions", params: valid_attributes }

      it 'creates a new subscription for the customer', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json_data.size).to eq 3

        expect(json_data[:attributes].size).to eq 9
        expect(json_data[:attributes][:customer_id]).to eq valid_attributes[:customer_id]
        expect(json_data[:attributes][:tea_id]).to eq valid_attributes[:tea_id]
        expect(json_data[:attributes][:title]).to eq valid_attributes[:title]
        expect(json_data[:attributes][:description]).to eq valid_attributes[:description]
        expect(json_data[:attributes][:temperature]).to eq valid_attributes[:temperature]
        expect(json_data[:attributes][:brew_time]).to eq valid_attributes[:brew_time]
        expect(json_data[:attributes][:price]).to eq valid_attributes[:price]
        expect(json_data[:attributes][:frequency]).to eq valid_attributes[:frequency]
        expect(json_data[:attributes][:status]).to eq valid_attributes[:status]
      end

      include_examples 'status code 201'
    end

    context 'when the customer does not exist' do
      let(:customer) { create(:customer) }
      let(:bad_customer_id) { customer.id + 1 }
      let(:errors) { ["Couldn't find Customer with 'id'=#{bad_customer_id}"] }

      before { post "/api/v1/customers/#{bad_customer_id}/subscriptions", params: {} }

      it 'returns an error that the customer cannot be found', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json[:errors]).to eq errors
      end

      include_examples 'status code 404'
    end

    context 'when the params are invalid' do
      let(:customer) { create(:customer) }
      let(:errors) do
        [
          "Tea can't be blank",
          "Description can't be blank",
          "Temperature can't be blank",
          'Temperature is not a number',
          "Brew time can't be blank",
          'Brew time is not a number',
          "Price can't be blank",
          'Price is not a number',
          "Frequency can't be blank",
          "Status can't be blank"
        ]
      end

      before { post "/api/v1/customers/#{customer.id}/subscriptions", params: {} }

      it 'returns error messages', :aggregate_failures do
        expect(json).not_to be_empty
        expect(json[:errors]).to eq errors
      end

      include_examples 'status code 422'
    end
  end
end
