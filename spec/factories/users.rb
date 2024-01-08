FactoryBot.define do
  factory :user do
    username { "user1" }
    password { "password" }
    password_confirmation { "password" }
  end
end