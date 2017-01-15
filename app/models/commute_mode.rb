class CommuteMode < ActiveRecord::Base
  has_many :user_commute_modes
  has_many :users, through: :user_commute_modes
end

