class CreateRails3wayUsers < ActiveRecord::Migration
  def change
    create_table :rails3way_users do |t|
      t.string :name

      t.timestamps
    end
  end
end
