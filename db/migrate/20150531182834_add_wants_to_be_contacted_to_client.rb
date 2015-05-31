class AddWantsToBeContactedToClient < ActiveRecord::Migration
  def change
    add_column :clients, :want_to_be_contacted, :boolean
  end
end
