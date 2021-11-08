FactoryBot.define do
  factory :tea do
    name { Faker::Tea.variety }
    description { Faker::Tea.type }
    temperature { rand(80..100) }
    brew_time { rand(1..5) }
    _id { Faker::Alphanumeric.alphanumeric(number: 24) }
  end
end
