class ReviewsController < ApplicationController
  before_action :set_reservation, only: %i[new create delete]
  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.reservation = @reservation
    # @review.user = current_user
    authorize @review
    if @review.save!
      flash[:success] = "review Saved"
      redirect_to gears_path, notice: "Review saved"
    else
      # flash.now[:alert] = "review Failed"
      render :new, status: :unprocessable_entity, alert: "Review failed"
    end
  end

  def index
    @reviews = policy_scope(Review)
  end

  private
  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
