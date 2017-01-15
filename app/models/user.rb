class User < ActiveRecord::Base
  has_secure_password validations: false

  has_many :user_commute_modes
  has_many :commute_modes, through: :user_commute_modes

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 6}, on: :create
  validates :address, presence: true
  validates :state, presence: true
  validates :city, presence: true
  validates :zipcode, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end