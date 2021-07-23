# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { "Title" }
    content { "Content" }
    image { "Image" }
    user
    category
  end
end
