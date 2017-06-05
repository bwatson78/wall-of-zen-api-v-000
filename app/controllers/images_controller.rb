class ImagesController < ApplicationController
  before_action :load_image, only: [:update, :destroy]

  def index
    @images = Image.all
    render json: @images
  end

  def create
    @image = Image.create(image_params)
    @image.save
  end

  def update
    @image.update(image_params)
  end

  def destroy
    @image.delete
  end

  private

    def image_params
      params.require(:image).permit(
      :url,
      :name,
      tag_attributes: [:tag_name])
    end

    def load_image
      @image = Image.find(params[:id])
    end

end
