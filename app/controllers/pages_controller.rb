class PagesController < ApplicationController
  def home
    @random_profiles = Profile.active.order_by_rand.limit(3)
  end
end
