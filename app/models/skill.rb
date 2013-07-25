class Skill < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :users, through: :user_skill
 
end
