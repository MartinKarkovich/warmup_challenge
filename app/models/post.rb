class Post < ApplicationRecord
    # Associations
    belongs_to :category
    belongs_to :user    

    # Scopes
    scope :for_title, -> (title){where(title: title)}
    scope :for_desc, -> {order(date_of_creation: :desc)}
    scope :for_category, -> (category_id){where(category: category_id)}

    # Validations
    validates :title,:content,:image,:category_id,:date_of_creation,:user_id, presence: true

end 