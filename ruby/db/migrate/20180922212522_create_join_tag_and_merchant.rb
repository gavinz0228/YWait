class CreateJoinTagAndMerchant < ActiveRecord::Migration
  def change
    create_table :join_tag_and_merchants do |t|
      t.string :tag
      t.string :merchant
    end
  end
end
