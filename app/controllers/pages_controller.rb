class PagesController < ApplicationController
  def home
    @random_profiles = Profile.active.order_by_rand.limit(4)
  end

  def sponsors
    @sponsors_by_rank = Sponsor.all.group_by(&:rank)
  end
end
