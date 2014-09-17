class PagesController < ApplicationController
  def home
    @profiles = Profile.active.order(:created_at).last(3)
  end
end
