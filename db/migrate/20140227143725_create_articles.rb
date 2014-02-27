class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.integer :segment_id
      t.integer :province_id
      t.boolean :published

      t.timestamps
    end
  end
end
