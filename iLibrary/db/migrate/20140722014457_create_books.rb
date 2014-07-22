class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :code
      t.string :title
      t.text :review
      t.integer :num_page
      t.string :book_type
      t.string :source
      t.text :themes

      t.timestamps
    end
  end
end
