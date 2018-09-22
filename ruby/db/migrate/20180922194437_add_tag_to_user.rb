class AddTagToUser < ActiveRecord::Migration
  def change
    add_reference :users, :tag, index: true, foreign_key: true
  end
end
