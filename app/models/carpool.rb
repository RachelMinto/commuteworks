class Carpool < ActiveRecord::Base
  has_many :user_carpools
  has_many :users, through: :user_carpools

  validates :origin_location, presence: true
  validates :parking_location, presence: true
  validates :days_per_week, presence: true, numericality: { greater_than_or_equal_to: 2 }
  validates :carpooler_2_email, presence: true
end