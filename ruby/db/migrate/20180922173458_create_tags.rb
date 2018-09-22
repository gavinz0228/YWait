class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, null: false, default: ""
      t.integer :user_tag_count, null: false, default: 0
      t.integer :merchant_tag_count, null: false, default: 0

      t.timestamps null: false
    end
  end
end
