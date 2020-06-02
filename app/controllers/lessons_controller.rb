class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_lesson, only: [:show]

  def index
    t = Time.now
    @lessons = Lesson.where("appointment > ?", t)
    @bookings = Booking.all
    @specialties = Specialty.all
    if current_user
      @user = current_user
    end
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.user = current_user
    if @lesson.save
      redirect_to lesson_path(lesson)
    else
      render :new
    end
  end

  def show
    @booking = @lesson.bookings.where(user: current_user).first
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :appointement)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
