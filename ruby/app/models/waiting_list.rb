class WaitingList < ActiveRecord::Base
  belongs_to :user
  belongs_to :merchant
end
