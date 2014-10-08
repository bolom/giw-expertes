csv = CSV.read('google_form.csv')

profiles = []

# puts csv # .map(&:size)

headers = {
  notes: 0,
  lastname: 1,
  firstname: 2,
  email: 3,
  phone: 4,
  linked_in_url: 5,
  twitter_url: 6,
  facebook_url: 7,
  google_plus_url: 8,
  author: 9,
  author_url_1: 10,
  author_url_2: 11,
  author_url_3: 12,
  speaker: 13,
  speaker_url_1: 14,
  speaker_url_2: 15,
  speaker_url_3: 16,
  teacher: 17,
  teacher_schools: 18,
  open_source: 19,
  open_source_url_1: 20,
  open_source_url_2: 21,
  open_source_url_3: 22,
  # domain_1: 23, # Gestion de projets...
  # domain_2: 24, # Dev
  # domain_3: 25, # Comm, market...
  # domain_4: 26, # Innovation design...
  # domain_5: 27, # Politique, business...
  someone_else: 28,
  sender_email: 29
  # domain_6: 30, # Technique, Admin...
}

csv.each do |line|
  # puts line.size

  profile = Profile.new do |p|
    p.notes = line[0]
    p.lastname = line[1]
    p.firstname = line[2]
    p.email = line[3]
    p.phone = line[4]
    p.linked_in_url = line[5].start_with?('http') ? line[5] : "https://#{line[5]}"
    twitter = line[6]
    if twitter
      twitter = "https://twitter.com/#{twitter.gsub('@', '')}" unless '/'.in?(twitter) # pseudo ou @pseudo
      twitter = twitter.start_with?('http') ? twitter : "https://#{twitter}" # "www.twitter.com/pseudo"
    end
    p.twitter_url = twitter
    p.facebook_url = line[7]
    p.google_plus_url = line[8]
    p.author = line[9] == 'Oui'
    p.author_url_1 = line[10]
    p.author_url_2 = line[11]
    p.author_url_3 = line[12]
    p.speaker = line[13] == 'Oui'
    p.speaker_url_1 = line[14]
    p.speaker_url_2 = line[15]
    p.speaker_url_3 = line[16]
    p.teacher = line[17] == 'Oui'
    p.teacher_schools = line[18]
    p.open_source = line[19] == 'Oui'
    p.open_source_url_1 = line[20]
    p.open_source_url_2 = line[21]
    p.open_source_url_3 = line[22]
    p.someone_else = line[28] == 'Oui'
    p.sender_email = line[29]

    skills = []
    skills += line[23].split(', ') if line[23] # Gestion de projets...
    skills += line[24].split(', ') if line[24] # Dev
    skills += line[25].split(', ') if line[25] # Comm, market...
    skills += line[26].split(', ') if line[26] # Innovation design...
    skills += line[27].split(', ') if line[27] # Politique, business...
    skills += line[30].split(', ') if line[30] # Technique, Admin...
    skills = skills.map do |s|
      s.gsub("\u00A0", " ").strip # Replace non breaking spaces by spaces the strip
    end
    # puts skills.inspect
    # puts skills.map(&:strip).inspect
    p.imported_skills = skills.join(', ')
    p.skill_ids = skills.map do |s|
      Skill.where(label: s).first.try(:id)
    end.compact
  end
  profile.save
end

"Contenu éditorial "
