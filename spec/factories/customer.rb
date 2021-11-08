FactoryBot.define do
  factory :customer do
    full_name { Faker::Name.name_with_middle }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
    street_address { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip_code { Faker::Address.zip_code }
  end
end
