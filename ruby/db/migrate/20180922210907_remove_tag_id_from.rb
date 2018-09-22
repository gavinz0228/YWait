class RemoveTagIdFrom < ActiveRecord::Migration
  def change
    remove_column :merchants, :tag_id, :string
    remove_column :users, :tag_id, :string
  end
end
