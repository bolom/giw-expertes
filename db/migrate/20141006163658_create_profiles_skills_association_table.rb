class CreateProfilesSkillsAssociationTable < ActiveRecord::Migration
  def change
    create_table :profiles_skills, id: false do |t|
      t.belongs_to :profile
      t.belongs_to :skill
    end
  end
end
