require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'relationships' do
    it { should have_many(:subscriptions).dependent(:destroy) }
  end

  describe 'validations' do
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:phone) }
    it { should validate_presence_of(:street_address) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip_code) }
  end

  describe 'factories' do
    describe 'customer' do
      subject(:customer) { create(:customer) }

      it 'is valid with valid attributes' do
        expect(customer).to be_valid
      end
    end

    describe '#customer_with_subscription' do
      let!(:customer) { customer_with_subscription }

      it 'creates valid objects' do
        expect(Customer.all.size).to eq 1
        expect(Subscription.all.size).to eq 1

        expect(Subscription.all.first.customer_id).to eq Customer.all.first.id
        expect(Subscription.all.first.tea_id).to eq '5fa3fd48d5ba620017ec1c09'
      end
    end
  end
end
