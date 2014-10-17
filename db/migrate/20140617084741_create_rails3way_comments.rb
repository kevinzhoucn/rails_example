class CreateRails3wayComments < ActiveRecord::Migration
  def change
    create_table :rails3way_comments do |t|
      t.string :title
      t.references :subject, :polymorphic => true

      t.timestamps
    end
  end
end
