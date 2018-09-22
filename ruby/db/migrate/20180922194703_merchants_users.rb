class MerchantsUsers < ActiveRecord::Migration
  def change
    add_column :merchants_users, :reward_points, :integer
  end
end
