class AddTextAndProvideIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :content, :text
    add_column :posts, :province_id, :integer
    add_column :posts, :user_id, :integer
  end
end
