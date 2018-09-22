class CreateWaitingLists < ActiveRecord::Migration
  def change
    create_table :waiting_lists do |t|
      t.references :user, index: true, foreign_key: true
      t.references :merchant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
