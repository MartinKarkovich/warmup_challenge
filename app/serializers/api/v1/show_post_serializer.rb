# frozen_string_literal: true

module Api
  module V1
    class ShowPostSerializer < ApplicationSerializer
      attributes :id, :created_at, :image, :title

      has_one :category, serializer: CategorySerializer
    end
  end
end
