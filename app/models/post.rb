class Post < ApplicationRecord
    # Associations
    has_one :category
end