class User < ActiveRecord::Base
  has_many :user_skills
  has_many :skills, through: :user_skills

   def proficiency_for(skill)
    self.skill_users.find_by_skill_id(skill.id).proficiency rescue 0
  end

  def set_proficiency_for(skill, level)
    self.skill_users.find_by_skill_id(skill.id).update_attributes(proficiency: level) rescue nil
  end

end
