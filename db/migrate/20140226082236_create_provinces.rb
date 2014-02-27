class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name, null: false
      t.string :abbr, null: false, limit: 10

      t.timestamps
    end
  end
end
