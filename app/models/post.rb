class Post < ApplicationRecord
    # Associations
    has_one :category

    # Scopes
    scope :for_title, -> {where(title: title)}
    scope :for_desc, -> {order(date_of_creation: :desc)}
    scope :for_category, -> {where(category: category)}
end