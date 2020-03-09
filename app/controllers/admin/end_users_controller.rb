class Admin::EndUsersController < ApplicationController
    def index
        @users = EndUser.with_deleted.all
    end

    private
    def end_user_params
        params.require(:end_user).permit(:name,:email,:status)
    end
end
