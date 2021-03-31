class HousesController < ApplicationController
  before_action :authorized

  def create
    @house = House.new(house_params)
    @house.user_id = @user.id
    if @house.save
      render json: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  private 
    def house_params
      params.require(:house).permit!
    end
end
