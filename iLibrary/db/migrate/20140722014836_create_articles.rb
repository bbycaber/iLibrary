class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :code
      t.string :title
      t.text :review
      t.integer :num_page
      t.text :themes

      t.timestamps
    end
  end
end
