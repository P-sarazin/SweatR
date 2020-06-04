class CamsController < ApplicationController
  def create
    head :no_content
    ActionCable.server.broadcast "session_channel", session_params
  end

  def username
    @user = User.find(params[:id]);
    render json: { username: @user.name}
  end

  private
    def session_params
      params.permit(:type, :from, :to, :sdp, :candidate)
    end
end
