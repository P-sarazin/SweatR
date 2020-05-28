class AddAverageCaloriesToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :average_calories, :integer
  end
end
