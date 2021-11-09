# require 'factory_bot_rails'
include FactoryBot::Syntax::Methods

Subscription.destroy_all
Customer.destroy_all

# reset PK's
ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

# CUSTOMERS
customer_1 = create(:customer)
customer_2 = create(:customer)
customer_3 = create(:customer)

# SUBSCRIPTIONS
subscription_1 = create(:subscription, customer: customer_1, tea_id: '5fa3fd48d5ba620017ec1c09', status: 'Active')
subscription_2 = create(:subscription, customer: customer_1, tea_id: '5fa3fdb0d5ba620017ec1c0a', status: 'Active')
subscription_3 = create(:subscription, customer: customer_2, tea_id: '5fa3fd48d5ba620017ec1c09', status: 'Cancelled')
