FactoryBot.define do
  factory :path do
    path { "path" }
    association :article, factory: :article
  end
end
