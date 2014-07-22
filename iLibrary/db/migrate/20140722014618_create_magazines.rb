class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :code
      t.string :title
      t.text :review
      t.integer :num_page
      t.string :source
      t.text :themes

      t.timestamps
    end
  end
end
