# frozen_string_literal: true

module Api
  module V1
    class StandardPostSerializer < ApplicationSerializer
      attributes :id, :content, :created_at, :image, :title, :user_id

      has_one :category, serializer: CategorySerializer
    end
  end
end
