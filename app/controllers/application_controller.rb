class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def default_url_options
    { host: ENV["heroku config:set DOMAIN=www.sweatr.xyz/"] || "localhost:3000" }
  end
end
