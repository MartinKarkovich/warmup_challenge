# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    sequence(:title, "a") { |n| "Title#{n}" }
    content { "Content" }
    image { "Image" }
    user
    category
  end
end
