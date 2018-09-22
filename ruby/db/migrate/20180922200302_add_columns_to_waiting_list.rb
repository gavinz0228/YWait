class AddColumnsToWaitingList < ActiveRecord::Migration
  def change
    add_column :waiting_lists, :status, :string
    add_column :waiting_lists, :priority, :integer
  end
end
