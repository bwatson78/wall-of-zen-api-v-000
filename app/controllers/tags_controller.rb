class TagsController < ApplicationController
  before_action :load_tag, only: [:update, :destroy]
  def index
    @tags = Tag.all
    render json: @tags
  end

  def create
    @tag = Tag.create(tag_params)
    @tag.save
  end

  def update
    @tag.update(tag_params)
  end

  def destroy
    @tag.delete
  end

  private

    def tag_params
      params.require(:tag).permit(
      :tag_name,)
    end

    def load_image
      @tag = Tag.find(params[:id])
    end

end
