class AddDescriptionToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :lesson_description, :string
  end
end
