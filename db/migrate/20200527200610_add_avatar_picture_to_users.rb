class AddAvatarPictureToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :avatar_picture, :string
  end
end
