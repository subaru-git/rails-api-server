FactoryBot.define do
  factory :history do
    association :user, factory: :user
    association :article, factory: :article
  end
end
