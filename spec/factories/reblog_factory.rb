FactoryBot.define do
  factory :reblog do
    association :user, factory: :user
    association :post, factory: :post
  end
end
