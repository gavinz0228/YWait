class CreateFeaturedMerchants < ActiveRecord::Migration
  def change
    create_table :featured_merchants do |t|
      t.references :user, index: true, foreign_key: true
      t.references :merchant, index: true, foreign_key: true
      t.integer :reward_points, null: false, default: 0

      t.timestamps null: false
    end
  end
end
