class AddAvatarPictureToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :avatar_picture, :string
  end
end
