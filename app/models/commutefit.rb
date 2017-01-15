class Commutefit < ActiveRecord::Base
  self.table_name = "commutefit_submissions"

  has_many :commutefit_submissions_users
  has_many :users, through: :commutefit_submissions_users
end