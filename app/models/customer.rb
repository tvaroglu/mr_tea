class Customer < ApplicationRecord
  has_many :subscriptions, dependent: :destroy

  validates :full_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip_code, presence: true
end
