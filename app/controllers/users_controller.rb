class UsersController < ApplicationController

    before_action :set_user, only: [ :show, :update, :destroy ]

    def create
      @user = User.new(users_params)
      @user.lesson = 0
      if @user.save
        render :json => @user
      else
        render json: { errors: "Error creating user, please try again."}
      end
    end

    def show
      if @user
        render json: @user
      else
        # this is a new user
        redirect_to action: "create"
      end
    end

    def update
      if @user.update(posts_params)
        render nothing: true
      else
        render json: { errors: "Error updating user, please try again."}
      end
    end

    def destroy
      if @user.destroy
        render nothing: true
      else
        render json: { errors: "Error deleting user, please try again"}
      end
    end

    private
      def set_user
        @user = User.find(params[:token])
      end

      def users_params
        params.require(:token).permit(:lesson)
      end

end
