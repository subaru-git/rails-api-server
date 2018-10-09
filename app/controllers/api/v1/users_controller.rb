module Api
  module V1
    class UsersController < ApplicationController
      def index
        @user = User.all
        render json: { status: true, users: @user }
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: { status: true, id: @user.id }
        else
          render json: { status: false }
        end
      end

      private

        def user_params
          json_request = ActionController::Parameters.new(JSON.parse(request.body.read))
          json_request["user"].permit(:name, :email, :password, :password_confirmation)
        end
    end
  end
end
