class ProfilesController < ApplicationController
  def index
    @profiles = Profile.active
  end

  def show
    @profile = Profile.active.find(params[:id])
  end
end
