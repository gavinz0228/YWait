class RemoveIdColumnsFromTag < ActiveRecord::Migration
  def change
    remove_column :tags, :merchant_id, :string
    remove_column :tags, :user_id, :string
  end
end
