FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { Faker::Alphanumeric.alphanumeric 10 }
    name { Faker::Name.first_name }
  end
end
