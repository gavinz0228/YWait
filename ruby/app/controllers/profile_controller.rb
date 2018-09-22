class ProfileController < ApplicationController
  def get_user
    user_id = params['id']
    if user_id.blank?
      render :json => {error: 'Missing user ID!', code: 400}
      return
    end

    user = User.get_user_profile(id: user_id)

    # @user = User.find(user_id)
    render json: user.as_json
  end


  DUMMY_DATA = {
      id: 0,
      name: 'John Smith',
      email: 'mydummy@email.com',
      address: '500 7th Ave, New York, NY',

      featured_merchants: [
          {
              name: 'peking duck',
              address: '1 1st St, New York, NY',
              reward_points: 100,
          },
          {
              name: 'grand sichuan',
              address: '5 1st St, New York, NY',
              reward_points: 500,
          },
          {
              name: 'hao noodle',
              address: '40 10th St, New York, NY',
              reward_points: 500,
          },

      ],
      waiting_list: [
          {
              name: 'burger king',
              address: '100 101st St, New York, NY',
              priority: 100,
              coupon: []
          },
          {
              name: 'korean bbq',
              address: '50 102nd St, New York, NY',
              priority: 80,
              coupon: [
                  id: 1,
                  description: 'sample coupon',
                  expired_at: '2018-09-24 18:00:01 UTC'
              ]
          },

      ]
  }
end
