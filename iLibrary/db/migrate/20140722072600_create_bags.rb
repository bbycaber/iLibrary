class CreateBags < ActiveRecord::Migration
  def change
    create_table :bags do |t|
      t.references :student, index: true

      t.timestamps
    end
  end
end
