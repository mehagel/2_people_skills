class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies

  def proficiency_for(skill)
    Proficiency.where(user_id: self.id, skill_id: skill.id).first.rating
  end

  def set_proficiency_for(skill, rating)
    self.skills << skill
    proficiency = Proficiency.where(user_id: self.id, skill_id: skill.id).first
    proficiency.update_attributes(rating: rating)
  end
end
