class TagsController < ApplicationController
  before_action :set_tag, only: [:show]

  def index
    @tags = Tag.all
    json_response(@tags)
  end

  def create
    @tag = Tag.create!(tag_params)
    json_response(@tag, :created)
  end

  def show
    json_response(@tag)
  end

  private

  def tag_params
    params.permit(:title)
  end

  def set_tag
    @tag = Tag.find(params[:id])
  end
end
