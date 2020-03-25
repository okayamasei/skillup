class Public::EndUsersController < ApplicationController

    def show
        @user = EndUser.find(params[:id])
    end
    def edit
        @user = EndUser.find(params[:id])
    end
    def update
        @user = EndUser.find(params[:id])
        if @user.update(end_user_params)
            # flash[:success] = 'ユーザー情報を編集しました。'
            redirect_to end_user_path(current_end_user)
        else
            # flash.now[:danger] = 'ユーザー情報の編集に失敗しました。'
            render :edit
        end   
    end

    def destroy
        @user = EndUser.find(params[:id])
        @user.destroy
        redirect_to new_end_user_registration_path
    end

    


    private
    def end_user_params
        params.require(:end_user).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:now_postal_code,:now_address,:phone_number,:email,:status)
    end
end
