class FeaturedMerchant < ActiveRecord::Base
  belongs_to :user
  belongs_to :merchant
end
