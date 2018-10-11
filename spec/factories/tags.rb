FactoryBot.define do
  factory :tag do
    tag { "tag" }
    association :article, factory: :article
  end
end
