class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :name, null: false, default: ""

      # Address information
      # t.string :number
      # t.string :street
      # t.string :city
      # t.string :state
      # t.string :zip
      # t.string :country
      t.string :address
      t.float :lat
      t.float :long

      # Merchant description
      t.text :description

      t.timestamps null: false
    end
  end
end
