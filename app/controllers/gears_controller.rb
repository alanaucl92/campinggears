class GearsController < ApplicationController

  def index
    @gears = policy_scope(Gear)
    @reservations= Reservation.all
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

    @reservation = Reservation.new()

    # @reservation.gear = @gear
    # @reservation.user = current_user

    # @reservation.total_price = (@reservation.reserve_to - @reservation.reserve_from) * @reservation.gear.price
    # @reservation.reserve_status = "Reserved"
    # @reservation.payment_status = "Outstanding"
    # authorize @reservation
    # if @reservation.save!
    #   # flash[:success] = "Reservation Saved"
    #   redirect_to gear_path(@gear), notice: "Reservation saved"
    # else
    #   # flash.now[:alert] = "Reservation Failed"
    #   render :new, status: :unprocessable_entity, alert: "Reservation failed"
    # end
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

  def reservation_params
    params.require(:reservation).permit(:reserve_from, :reserve_to)
  end
end
