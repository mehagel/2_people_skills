class CreateUserSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string  :name
      t.string  :context
      t.timestamps
    end

    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.timestamps
    end

    create_table :user_skills do |t|
      t.integer :user_id
      t.integer :skill_id 
      t.integer :proficiency, default: 0
      t.timestamps
  
    end
  end
end
