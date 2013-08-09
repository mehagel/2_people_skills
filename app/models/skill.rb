class Skill < ActiveRecord::Base
  
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates :name, :context, uniqueness: true


  def user_with_proficiency(rating)
    user_id = Proficiency.find_by_rating(rating).user_id
    User.find(user_id)
  end
end
