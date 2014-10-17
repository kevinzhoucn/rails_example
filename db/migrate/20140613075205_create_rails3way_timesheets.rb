class CreateRails3wayTimesheets < ActiveRecord::Migration
  def change
    create_table :rails3way_timesheets do |t|
      t.string :title

      t.timestamps
    end
  end
end
