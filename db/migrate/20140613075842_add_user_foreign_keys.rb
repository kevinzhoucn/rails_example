class AddUserForeignKeys < ActiveRecord::Migration
  def up
    add_column :rails3way_timesheets, :rails3way_user_id, :integer
    add_column :rails3way_expense_reports, :rails3way_user_id, :integer

    add_index :rails3way_timesheets, :rails3way_user_id
    add_index :rails3way_expense_reports, :rails3way_user_id
  end

  def down
    remove_index :rails3way_timesheets, :column => :rails3way_user_id
    remove_index :rails3way_expense_reports, :column => :rails3way_user_id

    remove_column :rails3way_timesheets, :rails3way_user_id
    remove_column :rails3way_expense_reports, :rails3way_user_id
  end
end
