class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def create
    # @booking = Booking.new(booking_params)
    @booking = Booking.new(user_id: params[:user_id], lesson_id: params[:lesson_id])
    @booking.save
    redirect_to user_dashboard_path(params[:user_id]), notice: 'This lesson has been successfully reserved.'
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id)
  end
end
