class ApiController < ApplicationController
    before_action :authenticate_user!,:set_current_user

    private
    def set_current_user
        @current_user = current_user
    end
end