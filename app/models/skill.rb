class Skill < ActiveRecord::Base
  
  has_many :user_skills
  has_many :users, through: :user_skills
  validates :name, :context, uniqueness: true

  
  def user_with_proficiency(rating)
    self.skill_users.where(proficiency: rating).first.user
  end
 
end
