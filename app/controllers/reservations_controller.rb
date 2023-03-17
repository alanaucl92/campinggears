class ReservationsController < ApplicationController
  before_action :set_gear, only: %i[new create delete]

  def index
    @reservations = policy_scope(Reservation)
    # @reservations = Reservation.where(user: current_user)
    @reservations = Reservation.where(user: current_user).page params[:page]
  end

  def mygear
    # @reservations  = Reservation.all
    @reservations = Reservation.joins(:gear).where(gear: {user: current_user})
    authorize Reservation
    @reservations = Reservation.joins(:gear).where(gear: {user: current_user}).page params[:page]
    # skip_authorization
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.gear = @gear
    @reservation.user = current_user

    if @reservation.reserve_from != nil && @reservation.reserve_to != nil
      @reservation.total_price = (@reservation.reserve_to - @reservation.reserve_from) * @reservation.gear.price
    end

    @reservation.reserve_status = "Pending"
    @reservation.payment_status = "Outstanding"
    authorize @reservation
    if @reservation.save!
      # flash[:success] = "Reservation Saved"
      redirect_to gears_path, notice: "Reservation saved"
    else
      # flash.now[:alert] = "Reservation Failed"
      render :new, status: :unprocessable_entity, alert: "Reservation failed"
    end
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def edit
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def update
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.update(reservation_params)
    redirect_to reservations_path
  end

  def confirm
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.reserve_status = "Reserved"
    @reservation.save
    redirect_to reservations_mygear_path
  end

  private
  def set_gear
    @gear = Gear.find(params[:gear_id])
  end

  def reservation_params
    params.require(:reservation).permit(:reserve_from, :reserve_to, :reserve_status, :payment_status)
  end

end
