# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
{
  "Gestion de projets et méthodologies" => [
    "Design Thinking",
    "DevOps",
    "Lean Startup",
    "Méthode Agile",
    "Product Owner",
    "Scrum Master"
  ],

  "Développement" => [
    "Android",
    "C++",
    "HTML5",
    "iOS",
    "Java",
    "Javascript",
    "Linux",
    "Open Source",
    "PHP",
    "Python",
    "Ruby",
    "Symfony",
    ".NET"
  ],

  "Communication, marketing et contenu" => [
    "Community management",
    "Contenu éditorial",
    "Cross-canal",
    "Cross-media",
    "Cross-platform",
    "Digital PR",
    "Digital Storytelling",
    "Display",
    "e-CRM",
    "Loyalty",
    "Medias",
    "Planning stratégique",
    "Régie mobile",
    "Retargeting",
    "SEO",
    "SMO",
    "Social Media",
    "Social TV"
  ],

  "Innovation, design et nouvelles technologies" => [
    "Big Data",
    "Cloud Computing",
    "Data Science",
    "e-Santé",
    "e-Education",
    "Ergonomie",
    "Formation/enseignement au numérique",
    "Gaming",
    "IHM",
    "Low Tech",
    "Management de l'innovation",
    "Objets connectés",
    "Open Data",
    "Open Innovation",
    "Robotique",
    "Sharing Economy",
    "UI Design",
    "UX Design",
    "Wearable Products",
    "Web Design"
  ],

  "Politique, business et investissement" => [
    "Business Model",
    "Crowdfunding",
    "E-Commerce",
    "Entrepreneuriat ",
    "Juridique",
    "M-Commerce",
    "Mobile",
    "Monétisation",
    "Pitch",
    "Start-up",
    "Stratégie",
    "Venture Capitalism",
    "Web-to-Store",
    "Réglementation et législation",
    "Politique"
  ],

  "Technique, Administration réseau, système et base de données" => [
    "Câbles",
    "DBA",
    "DNS",
    "Hacker",
    "Matériel et Data Center",
    "Normalisation",
    "Routage",
    "Sécurité",
    "Unix",
    "Windows"
  ]
}.each do |domain_label, skill_labels|
  domain = Domain.create(label: domain_label)
  skill_labels.each do |skill_label|
    domain.skills.create(label: skill_label)
  end
end
