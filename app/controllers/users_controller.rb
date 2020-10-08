class UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token, username: user.username }
    json_response(response, :created)
  end

  def favourites
    user = User.find_by(username: params[:username])
    json_response(user.favorites_courses)
  end

  private

  def user_params
    params.permit(:email, :username, :password)
  end
end
