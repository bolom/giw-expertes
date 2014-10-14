class ContactsController < ApplicationController
  def message_to_giw
    mailer = ContactMailer.message_to_giw(params[:from_email], params[:from_name], params[:subject], params[:message])

    respond_to do |format|
      if mailer.deliver
        format.js { head :created }
      end
    end
  end

  def message_to_profile
    mailer = ContactMailer.message_to_profile(Profile.active.find(params[:profile_id]), params[:from_email], params[:from_name], params[:subject], params[:message])

    respond_to do |format|
      if mailer.deliver
        format.js { head :created }
      end
    end
  end
end
