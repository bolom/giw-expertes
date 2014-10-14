class ContactMailer < ActionMailer::Base
  default from: "hello@girlzinweb.com"

  def message_to_profile(profile, from_email, from_name, subject, message)
    @profile = profile
    @from_email = from_email
    @from_name = from_name
    @subject = subject
    @message = message

    mail(to: @profile.email, subject: @subject)
  end

  def message_to_giw(from_email, from_name, subject, message)
    @from_email = from_email
    @from_name = from_name
    @subject = subject
    @message = message

    mail(to: "hello@girlzinweb.com", subject: @subject)
  end
end
