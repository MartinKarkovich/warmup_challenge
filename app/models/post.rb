class Post < ApplicationRecord
    # Associations
    belongs_to :category
    belongs_to :user    

    # Scopes
    scope :for_title, -> {where(title: title)}
    scope :for_desc, -> {order(date_of_creation: :desc)}
    scope :for_category, -> {where(category: category)}

    # Validations
    validates :title,:content,:image,:category_id,:date_of_creation, presence: true

end