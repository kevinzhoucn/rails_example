class CreateOnecompanyProductCategories < ActiveRecord::Migration
  def change
    create_table :onecompany_product_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
