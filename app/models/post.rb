# frozen_string_literal: true

class Post < ApplicationRecord
  # Associations
  belongs_to :category
  belongs_to :user

  # Scopes
  acts_as_paranoid # Soft delete scope - adds only_deleted,with_deleted scopes, and the really_destroy! method.
  scope :for_title, -> (title) { where(title: title) }
  scope :for_category, -> (category_id) { where(category: category_id) }

  # Validations
  validates :title, :content, :image, :category_id, :user_id, presence: true
end
