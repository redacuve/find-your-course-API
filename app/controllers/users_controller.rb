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

  def add_favourite
    user = User.find_by(username: params[:username])
    new_favourite = user.favorites.create!(course_id: params[:course])
    json_response(new_favourite, :created)
  end

  def remove_favourite
    user = User.find_by(username: params[:username])
    favorite_to_destroy = Favourite.find_by(user_id: user.id, course_id: params[:course])
    favorite_to_destroy.destroy
    head :no_content
  end

  private

  def user_params
    params.permit(:email, :username, :password)
  end
end
