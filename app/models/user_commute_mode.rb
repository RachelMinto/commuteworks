class UserCommuteMode < ActiveRecord::Base
  belongs_to :user
  belongs_to :commute_mode
end