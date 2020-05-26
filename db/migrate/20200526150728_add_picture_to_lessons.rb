class AddPictureToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :lesson_picture, :string
  end
end
