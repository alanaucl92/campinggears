class GearsController < ApplicationController

  def index
    @gears = Gear.all
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user = current_user
    if @gear.save
      redirect_to gear_path(@gear), notice: "Gear was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def gear_params
    params.require(:gear).permit(:name, :brand, :price, :category, :description)
  end
end
