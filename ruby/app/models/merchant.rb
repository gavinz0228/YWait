class Merchant < ActiveRecord::Base
  has_many :waiting_lists
  has_and_belongs_to_many :tags


end
