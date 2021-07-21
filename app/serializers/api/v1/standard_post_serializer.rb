module Api
    module V1
        class StandardPostSerializer < ApplicationSerializer
            attributes :id,:content,:date_of_creation,:image,:title,:user_id

            has_one :category, serializer: CategorySerializer
        
        end        
    end
end