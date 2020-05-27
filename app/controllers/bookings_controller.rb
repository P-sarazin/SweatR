class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.lesson_id = params[lesson_id]
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to lesson_path(@booking.lesson), notice: 'Lesson was successfully reserved.'
    else
      render :new
    end
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :lesson_id, :start_date, :end_date)
  end
end
