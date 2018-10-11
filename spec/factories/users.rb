FactoryBot.define do
  factory :user do
    sequence(:name) {|n| "name-#{n}" }
    sequence(:email) {|n| "name-#{n}@mail.com" }
    password { "password" }
  end
end
