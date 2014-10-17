class ConvertToJoinModel < ActiveRecord::Migration
  def up
    drop_table :recipe_magazine_readers
    create_table :recipe_subscriptions do |t|
      t.column :recipe_reader_id, :integer
      t.column :recipe_magazine_id, :integer
      t.column :last_renewal_on, :date
      t.column :length_in_issues, :integer
    end
  end
end
