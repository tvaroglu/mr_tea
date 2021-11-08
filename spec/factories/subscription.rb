FactoryBot.define do
  factory :subscription do
    title { Faker::Tea.variety }
    description { Faker::Tea.type }
    temperature { rand(80..100) }
    brew_time { rand(1..5) }
    price { Faker::Number.decimal(l_digits: 2) }
    frequency { %w[Weekly Monthly Annually].sample }
    status { %w[Active Cancelled].sample }
    tea_id { Faker::Alphanumeric.alphanumeric(number: 24) }
    customer
  end
end
