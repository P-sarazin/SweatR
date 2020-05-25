class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :name
      t.references :specialty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
