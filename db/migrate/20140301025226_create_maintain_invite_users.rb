class CreateMaintainInviteUsers < ActiveRecord::Migration
  def change
    create_table :maintain_invite_users do |t|
      t.string :name
      t.string :code

      t.timestamps
    end

#    InviteUser.create(name: "zpf", code: "cny")
  end
end
