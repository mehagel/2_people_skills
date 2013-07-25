class User < ActiveRecord::Base
  has_many :skills, through: :user_skill
end
