class AddHasReferralToClients < ActiveRecord::Migration
  def change
    add_column :clients, :has_referral, :boolean
  end
end
