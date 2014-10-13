class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :url
      t.string :logo
      t.integer :rank
      t.float :order

      t.timestamps
    end
  end
end
