class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :student, index: true

      t.timestamps
    end
  end
end
