# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:email, "a") { |n| "User#{n}@test.com" }
    password { Devise.friendly_token }
  end
end
