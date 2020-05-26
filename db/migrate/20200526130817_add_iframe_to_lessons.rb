class AddIframeToLessons < ActiveRecord::Migration[6.0]
  def change
    add_column :lessons, :iframe, :string
  end
end
