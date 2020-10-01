class ApplicationController < ActionController::API
  attr_reader :current_user

  include Response
  include ExceptionHandler

  before_action :authorize_request

  private

  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
end
