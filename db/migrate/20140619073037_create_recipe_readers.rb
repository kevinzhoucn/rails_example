class CreateRecipeReaders < ActiveRecord::Migration
  def change
    create_table :recipe_readers do |t|
      t.string :name

      t.timestamps
    end
  end
end
