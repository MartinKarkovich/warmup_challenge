module Api
    module V1
        class ShowPostSerializer < ApplicationSerializer
            attributes :id,:date_of_creation,:image,:title

            has_one :category, serializer: CategorySerializer
        
        end        
    end
end