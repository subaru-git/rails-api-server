FactoryBot.define do
  factory :like do
    association :user, factory: :user
    association :article, factory: :article
  end
end
