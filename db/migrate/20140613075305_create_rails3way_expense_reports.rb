class CreateRails3wayExpenseReports < ActiveRecord::Migration
  def change
    create_table :rails3way_expense_reports do |t|
      t.string :title

      t.timestamps
    end
  end
end
