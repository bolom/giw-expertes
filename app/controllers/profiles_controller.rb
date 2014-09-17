class ProfilesController < ApplicationController
  def index
    @profiles = Profile.active
  end
end
