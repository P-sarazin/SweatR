class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.all
    t = Time.now
    @lessons = Lesson.where("appointment > ?", t)
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
  end

  private

  def lesson_params
    params.require(:lesson).permit(:name, :appointement)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
