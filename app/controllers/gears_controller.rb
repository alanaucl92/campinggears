class GearsController < ApplicationController



  def index
    @gears = policy_scope(Gear)
  end

  def new
    @gear = Gear.new
    authorize @gear
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user = current_user
    authorize @gear
    if @gear.save
      redirect_to gear_path(@gear), notice: "Gear was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @gear = Gear.find(params[:id])
    authorize @gear
  end

  def edit
    @gear = Gear.find(params[:id])
    authorize @gear
  end

  def update
    @gear = Gear.find(params[:id])
    authorize @gear
    @gear.update(gear_params)
    redirect_to gear_path(@gear)
  end

  def destroy
    @gear = Gear.find(params[:id])
    authorize @gear
    @gear.destroy
    redirect_to gears_path, status: :see_other
  end

  private

  def gear_params
    params.require(:gear).permit(:name, :brand, :price, :category, :description, :photo)
  end
end
