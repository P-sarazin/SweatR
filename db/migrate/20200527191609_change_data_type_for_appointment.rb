class ChangeDataTypeForAppointment < ActiveRecord::Migration[6.0]
  def change
    change_table :lessons do |t|
      t.change :appointment, :datetime
    end
  end
end
