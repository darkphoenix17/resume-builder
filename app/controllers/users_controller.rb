class UsersController < ApplicationController
    include SessionsHelper

    def new
    end

    def create
        @user = User.create(params.require(:user).permit(:name, :email, :password))
        log_in(@user)
        redirect_to(root_path)
    end

end
