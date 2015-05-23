class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.boolean :is_home
      t.boolean :is_interested
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
