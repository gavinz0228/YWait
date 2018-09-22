class CreateJoinTableUserAndMerchant < ActiveRecord::Migration
  def change
    create_join_table :users, :merchants do |t|
      # t.index [:user_id, :merchant_id]
      # t.index [:merchant_id, :user_id]
    end
  end
end
