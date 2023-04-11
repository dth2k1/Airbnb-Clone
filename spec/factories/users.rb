FactoryBot.define do
  factory :user do
    id { 1 }
    sequence(:email) { |i| "foo_#{i}@example.com" }
    password { "password" }
  end
end
