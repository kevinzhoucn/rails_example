class CreateMaintainInviteArticles < ActiveRecord::Migration
  def change
    create_table :maintain_invite_articles do |t|
      t.string :title
      t.text :content
      t.integer :invite_user_id

      t.timestamps
    end
  end
end
