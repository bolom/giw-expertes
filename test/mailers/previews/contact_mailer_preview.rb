# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def message_to_profile
    ContactMailer.message_to_profile(Profile.first, "someone@example.com", "Some One", "Mail subject", "Hi there!\nHow do you do?")
  end

  def message_to_giw
    ContactMailer.message_to_giw("someone@example.com", "Some One", "Mail subject", "Hi there!\nHow do you do?")
  end
end
