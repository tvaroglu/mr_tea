class Api::V1::SubscriptionsController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id])
    subscription = customer.subscriptions.create!(subscription_params)
    json_response(SubscriptionSerializer.new(subscription).serializable_hash,
                  :created)
  end

  def subscription_params
    params.permit(:title, :description, :temperature, :brew_time, :tea_id,
                  :price, :frequency, :status, :customer_id)
  end
end
