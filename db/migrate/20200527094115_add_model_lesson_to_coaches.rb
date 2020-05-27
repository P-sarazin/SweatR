class AddModelLessonToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :model_lesson, :string
  end
end
