class AddPictureAndLastPositionFieldsToProfiles < ActiveRecord::Migration
  def change
    change_table :profiles do |t|
      t.string :picture
      t.string :last_position
    end
  end
end
