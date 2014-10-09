ActiveAdmin.register Profile do
  permit_params(
    :notes,
    :active,
    :firstname,
    :lastname,
    :last_position,
    :remote_picture_url,
    :email,
    :phone,
    :someone_else,
    :sender_email,
    :linked_in_url,
    :twitter_url,
    :facebook_url,
    :google_plus_url,
    :author,
    :author_url_1,
    :author_url_2,
    :author_url_3,
    :speaker,
    :speaker_url_1,
    :speaker_url_2,
    :speaker_url_3,
    :teacher,
    :teacher_schools,
    :open_source,
    :open_source_url_1,
    :open_source_url_2,
    :open_source_url_3,
    :imported_skills,
    { skill_ids: [] }
  )

  index do
    selectable_column
    id_column

    column :notes
    column :active
    column :firstname
    column :lastname
    column :last_position
    column :email
    column :phone
    column :someone_else
    column :sender_email
    column :linked_in_url
    column :twitter_url
    column :facebook_url
    column :google_plus_url
    column :author
    column :author_urls do |profile|
      div profile.author_url_1
      div profile.author_url_2
      div profile.author_url_3
    end
    column :speaker
    column :speaker_urls do |profile|
      div profile.speaker_url_1
      div profile.speaker_url_2
      div profile.speaker_url_3
    end
    column :teacher
    column :teacher_schools
    column :open_source
    column :open_source_urls do |profile|
      div profile.open_source_url_1
      div profile.open_source_url_2
      div profile.open_source_url_3
    end
    column :skills do |profile|
      profile.skills.map(&:label).join(', ')
    end
    column :imported_skills
    column :created_at
    column :updated_at

    actions
  end

  show do |profile|
    attributes_table do
      row :notes
      row :active
      row :firstname
      row :lastname
      row :last_position
      row :picture_url
      row :picture do
        image_tag(profile.picture_url)
      end
      row :email
      row :phone
      row :someone_else
      row :sender_email
      row :linked_in_url
      row :twitter_url
      row :facebook_url
      row :google_plus_url
      row :author
      row :author_url_1
      row :author_url_2
      row :author_url_3
      row :speaker
      row :speaker_url_1
      row :speaker_url_2
      row :speaker_url_3
      row :teacher
      row :teacher_schools
      row :open_source
      row :open_source_url_1
      row :open_source_url_2
      row :open_source_url_3
      row :skills do
        profile.skills.map(&:label).join(', ')
      end
      row :imported_skills
    end
  end

  form do |f|
    f.inputs do
      f.input :notes
      f.input :active
      f.input :firstname
      f.input :lastname
      f.input :last_position
      f.input :remote_picture_url
      f.input :email
      f.input :phone
      f.input :someone_else
      f.input :sender_email
      f.input :linked_in_url
      f.input :twitter_url
      f.input :facebook_url
      f.input :google_plus_url
      f.input :author
      f.input :author_url_1
      f.input :author_url_2
      f.input :author_url_3
      f.input :speaker
      f.input :speaker_url_1
      f.input :speaker_url_2
      f.input :speaker_url_3
      f.input :teacher
      f.input :teacher_schools
      f.input :open_source
      f.input :open_source_url_1
      f.input :open_source_url_2
      f.input :open_source_url_3
      f.input :skills, as: :check_boxes, collection: Skill.all
      f.input :imported_skills
    end

    f.actions
  end
end
