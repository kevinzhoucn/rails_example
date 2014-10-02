class CreateRecipeMagazineReaders < ActiveRecord::Migration
  def change
    create_table :recipe_magazine_readers do |t|
      t.integer :recipe_magazine_id
      t.integer :recipe_reader_id  

      t.timestamps
    end
  end
end
