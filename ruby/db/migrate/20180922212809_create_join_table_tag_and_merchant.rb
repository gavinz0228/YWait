class CreateJoinTableTagAndMerchant < ActiveRecord::Migration
  def change
    create_join_table :tags, :merchants do |t|
      # t.index [:tag_id, :merchant_id]
      # t.index [:merchant_id, :tag_id]
    end
  end
end
