class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
  end

  def create
    @booking = Booking.new
    @booking.lesson = Lesson.find(params[:lesson_id])
    @booking.user = current_user
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
end
