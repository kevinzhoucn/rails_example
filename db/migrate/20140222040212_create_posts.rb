class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :category_id
      t.integer :sub_category_id

      t.timestamps
    end
  end
end
