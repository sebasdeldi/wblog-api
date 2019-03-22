FactoryBot.define do
  factory :like do
    user_id { FactoryBot.create(:user).id }
    post_id { FactoryBot.create(:post).id }
    association :user, factory: :user
    association :post, factory: :post
  end
end
