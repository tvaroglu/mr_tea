require 'rails_helper'

describe 'SubscriptionSerializer', type: :serializer do
  describe 'instance methods' do
    describe '#serializable_hash' do
      context 'when I provide valid subscriptions' do
        let(:subscription) { create(:subscription) }
        let(:subscription_hash) { SubscriptionSerializer.new(subscription).serializable_hash }
        let(:subscription_data) { subscription_hash[:data] }
        let(:subscription_attributes) { subscription_data[:attributes] }

        let(:subscriptions_list) { create_list(:subscription, 5) }
        let(:subscriptions_hash) { SubscriptionSerializer.new(subscriptions_list).serializable_hash }
        let(:subscriptions_data) { subscriptions_hash[:data] }

        it 'formats a subscription response for delivery', :aggregate_failures do
          expect(subscription_hash.class).to eq Hash
          expect(subscription_hash.size).to eq 1

          expect(subscription_data.class).to eq Hash
          expect(subscription_data.size).to eq 3

          expect(subscription_data[:id].class).to eq String
          expect(subscription_data[:type]).to eq :subscription

          expect(subscription_attributes.size).to eq 9
          expect(subscription_attributes[:customer_id].class).to eq Integer
          expect(subscription_attributes[:tea_id].class).to eq String
          expect(subscription_attributes[:title].class).to eq String
          expect(subscription_attributes[:description].class).to eq String
          expect(subscription_attributes[:temperature].class).to eq Integer
          expect(subscription_attributes[:brew_time].class).to eq Integer
          expect(subscription_attributes[:price].class).to eq Float
          expect(subscription_attributes[:frequency].class).to eq String
          expect(subscription_attributes[:status].class).to eq String
        end

        it 'formats subscription responses for delivery', :aggregate_failures do
          expect(subscriptions_hash.class).to eq Hash
          expect(subscriptions_hash.size).to eq 1

          expect(subscriptions_data.class).to eq Array
          expect(subscriptions_data.size).to eq 5

          subscriptions_data.each do |subscription|
            expect(subscription.class).to eq Hash
            expect(subscription.size).to eq 3
            expect(subscription[:id].class).to eq String
            expect(subscription[:type]).to eq :subscription
            expect(subscription[:attributes].size).to eq 9
            expect(subscription[:attributes][:customer_id].class).to eq Integer
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
      end
    end
  end
end
