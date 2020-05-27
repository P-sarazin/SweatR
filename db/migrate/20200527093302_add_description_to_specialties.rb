class AddDescriptionToSpecialties < ActiveRecord::Migration[6.0]
  def change
    add_column :specialties, :description, :string
  end
end
