class PixelsController < ApplicationController
  def show
    @pixel = Pixel.find(params[:id])
    render json: @pixel
  end

  def create
    @pixel = Pixel.new()
    @pixel.save
    render json: @pixel
  end
end
