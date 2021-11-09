class SubscriptionSerializer
  include JSONAPI::Serializer

  attributes :customer_id, :tea_id, :title, :description, :temperature,
             :brew_time, :price, :frequency, :status
end
