class LessonsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_lesson, only: [:show]

  def index
  end

  def show
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
