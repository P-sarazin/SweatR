class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :set_default_avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings

  def set_default_avatar
    self.avatar_picture = ActionController::Base.helpers.asset_path("default_avatar.png") if self.avatar_picture.nil?
    self.name = self.email.split('@')[0]
  end
end
