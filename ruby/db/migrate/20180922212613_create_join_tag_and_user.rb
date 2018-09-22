class CreateJoinTagAndUser < ActiveRecord::Migration
  def change
    create_table :join_tag_and_users do |t|
      t.string :tag
      t.string :user
    end
  end
end
