class AddUserToTag < ActiveRecord::Migration
  def change
    add_reference :tags, :user, index: true, foreign_key: true

  end

  def down
    remove_column :users, :tag_id
  end
end
