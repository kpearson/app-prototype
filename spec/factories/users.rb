FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    encrypted_password "password"
    sign_in_count 1
  end
end
