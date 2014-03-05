class CreateMaintainCustomerFeedbacks < ActiveRecord::Migration
  def change
    create_table :maintain_customer_feedbacks do |t|
      t.string :message, limit: 1000

      t.timestamps
    end
  end
end
