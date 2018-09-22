class AddMerchantToTag < ActiveRecord::Migration
  def change
    add_reference :tags, :merchant, index: true, foreign_key: true

    def down
      remove_column :merchants, :tag_id
    end
  end
end
