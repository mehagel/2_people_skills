class User < ActiveRecord::Base
  has_many :user_skills, dependent: :destroy
  has_many :skills, :through=> :user_skills

  def proficiency_for(skill)
    # self.skills.where()
    users_skills_object = self.users_skills.where(skill_id: skill.id).first
    users_skills_object.proficiency
  end

  def set_proficiency_for(skill, rating)
    users_skills_object = self.users_skills.where(skill_id: skill.id).first
    # p users_skills_object
    users_skills_object.update_attributes(proficiency: rating)
  end

end
