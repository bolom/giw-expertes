class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :label
      t.references :domain

      t.timestamps
    end
  end
end
