class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :firstname
      t.string :lastname
      t.boolean :active
      t.text :linked_in_url

      t.timestamps
    end
  end
end
