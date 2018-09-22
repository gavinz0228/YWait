class Tag < ActiveRecord::Base
  # has_many :merchant_tags
  has_and_belongs_to_many :merchants
  has_many :users
end
