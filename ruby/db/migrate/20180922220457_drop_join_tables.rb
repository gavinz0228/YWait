class DropJoinTables < ActiveRecord::Migration
  def change
    drop_table :join_tag_and_merchants
    drop_table :join_tag_and_users
    drop_table :merchants_users
  end
end
