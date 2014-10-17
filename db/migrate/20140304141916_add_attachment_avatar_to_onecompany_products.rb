class AddAttachmentAvatarToOnecompanyProducts < ActiveRecord::Migration
  def self.up
    change_table :onecompany_products do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :onecompany_products, :avatar
  end
end
