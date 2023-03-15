class ReservationsController < ApplicationController
  before_action :set_gear, only: %i[new create delete]

  def index
    @reservations = policy_scope(Reservation)
  end

  def mygear
    @reservations = policy_scope(Reservation)
    authorize @reservations
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.gear = @gear
    @reservation.user = current_user
    @reservation.total_price = (@reservation.reserve_to - @reservation.reserve_from) * @reservation.gear.price
    authorize @reservation
    if @reservation.save!
      # flash[:success] = "Reservation Saved"
      redirect_to gear_path(@gear), notice: "Reservation saved"
    else

      # flash.now[:alert] = "Reservation Failed"
      render :new, status: :unprocessable_entity, alert: "Reservation failed"
    end
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  private
  def set_gear
    @gear = Gear.find(params[:gear_id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserve_from, :reserve_to, :gear_id, :user_id, :total_price, :reserve_status, :payment_status)
  end

end
