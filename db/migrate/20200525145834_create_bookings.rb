class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :review_text
      t.integer :review_rating
      t.references :lesson, null: false, foreign_key: true

      t.timestamps
    end
  end
end
