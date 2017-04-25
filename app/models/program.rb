class Program < ActiveRecord::Base
  include Sluggable
  has_many :user_programs
  has_many :users, through: :user_programs

  sluggable_column :name  
end