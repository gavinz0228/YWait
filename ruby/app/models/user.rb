class User < ActiveRecord::Base
  # # Include default devise modules. Others available are:
  # # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  has_many :waiting_lists
  has_many :featured_merchants
  has_many :merchants, through: :featured_merchants
  has_many :tags

  def self.get_user_profile(user_id)
    return nil if !user_id.is_a?(Hash) || user_id[:id].blank?
    id = user_id[:id]

    user = find_by_id(id)
    return nil if user.nil?
    puts user.inspect

    hash = {}
    hash['name'] = user.name
    waiting_list =  WaitingList.where(user_id: id, status: 'new')
    hash['waiting_lists'] = waiting_list.map do |w|
      ww = w.attributes
      ww.delete('updated_at')
      ww['started_at'] = ww.delete('created_at')
      ww
    end
    hash['featured_merchants'] = user.get_merchants

    puts hash.inspect
    hash

  end

  def get_merchants
    m_id_to_rewards = {}.tap do |h|
      featured_merchants.each do |m|
        h[m.merchant_id] = m.reward_points
      end
    end


    merchants.map do |m|
      h = m.attributes
      h['reward_point'] = m_id_to_rewards[m.id] if m_id_to_rewards[m.id]
      h['added_at']= h.delete('created_at')
      h.delete('updated_at')
      h
    end


  end
end
