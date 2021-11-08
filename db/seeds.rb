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

# SUBSCRIPTIONS
subscription_1 = create(:subscription, customer: customer_1, tea_id: '5fa3fd48d5ba620017ec1c09')
