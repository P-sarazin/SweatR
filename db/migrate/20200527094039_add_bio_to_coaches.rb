class AddBioToCoaches < ActiveRecord::Migration[6.0]
  def change
    add_column :coaches, :bio, :string
  end
end
