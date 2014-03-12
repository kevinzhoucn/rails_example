class CreateOnecompanyProducts < ActiveRecord::Migration
  def change
    create_table :onecompany_products do |t|
      t.string :name
      t.text :content
      t.string :img_url
      t.integer :onecompany_product_category_id

      t.timestamps
    end
  end
end
