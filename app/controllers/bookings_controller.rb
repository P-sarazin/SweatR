class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def create
    # @booking = Booking.new(booking_params)
    @booking = Booking.new(user_id: current_user.id, lesson_id: params[:lesson_id])
    @booking.save
    redirect_to user_dashboard_path(user_id: current_user.id), notice: 'This lesson has been successfully reserved.'
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id)
  end
end
