class Skill < ActiveRecord::Base
  
  has_many :user_skills, dependent: :destroy
  has_many :users, :through=> :user_skills
  validates_uniqueness_of :name

  
  def user_with_proficiency(rating)
    self.users_skills.where(proficiency: rating)
  end
 
end
