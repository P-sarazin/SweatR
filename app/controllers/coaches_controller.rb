class CoachesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_coach, only: [:show]

  def index
    @coaches = Coach.all
    if current_user
      @user = current_user
    end
  end

  def create
    @coach = Coach.new(coach_params)
    @coach.user = current_user
    if @coach.save
      redirect_to coach_path(coach)
    else
      render :new
    end
  end

  private

  def coach_params
    params.require(:coach).permit(:name, :appointement)
  end

end
