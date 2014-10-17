class CreateRecipeMagazines < ActiveRecord::Migration
  def change
    create_table :recipe_magazines do |t|
      t.string :title

      t.timestamps
    end
  end
end
