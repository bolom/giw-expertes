class CompleteProfilesFields < ActiveRecord::Migration
  def change
    change_table :profiles do |t|
      t.text :notes
      t.string :email
      t.string :phone
      t.string :twitter_url
      t.string :facebook_url
      t.string :google_plus_url
      t.boolean :author
      t.string :author_url_1
      t.string :author_url_2
      t.string :author_url_3
      t.boolean :speaker
      t.string :speaker_url_1
      t.string :speaker_url_2
      t.string :speaker_url_3
      t.boolean :teacher
      t.string :teacher_schools
      t.boolean :open_source
      t.string :open_source_url_1
      t.string :open_source_url_2
      t.string :open_source_url_3
      t.boolean :someone_else
      t.string :sender_email
      t.text :imported_skills
    end
  end
end
