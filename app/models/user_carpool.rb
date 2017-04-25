class UserCarpool < ActiveRecord::Base
  belongs_to :user
  belongs_to :carpool
end