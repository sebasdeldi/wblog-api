FactoryBot.define do
  factory :post do
    title { Faker::Book.title }
    description { Faker::Quote.yoda.truncate(400) }
    status { 'free_access' }
    association :user, factory: :user
    user_id { FactoryBot.create(:user).id }
  end
end
