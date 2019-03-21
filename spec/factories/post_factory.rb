FactoryBot.define do
  factory :post do
    title { Faker::Book.title }
    description { Faker::Quote.yoda }
    status { 0 }
    association :user, factory: :user
  end
end
