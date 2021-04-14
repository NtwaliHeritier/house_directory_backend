class HousesController < ApplicationController
  before_action :authorized

  def create
    image = Cloudinary::Uploader.upload(params[:image])
    puts params[:image]
    @house = House.new(house_params)
    @house.user_id = @user.id
    @house.image = image["url"]
    if @house.save
      render json: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  def index
    @houses = House.all
    render json: @houses
  end

  private 
    def house_params
      params.permit(:name, :description, :image, :price)
    end
end
