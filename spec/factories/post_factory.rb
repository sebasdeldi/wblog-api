FactoryBot.define do
  factory :post do
    title { Faker::Book.title }
    description { Faker::Quote.yoda.truncate(400) }
    status { 0 }
    association :user, factory: :user
  end
end
