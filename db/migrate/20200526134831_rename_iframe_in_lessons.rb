class RenameIframeInLessons < ActiveRecord::Migration[6.0]
  def change
    rename_column :lessons, :iframe, :url
  end
end
