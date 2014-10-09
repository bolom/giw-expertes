class ProfilesController < ApplicationController
  def index
    table = Profile.arel_table
    @profiles = Profile.active.includes(:skills).page(params[:page]).per(16)

    if params[:byname].present?
      @names = params[:byname].split(' ')
      @profiles = @profiles.where(
        table[:firstname].matches_any(@names.map { |name| "%#{name}%" }).or(
          table[:lastname].matches_any(@names.map { |name| "%#{name}%" })
        )
      )
    end

    if params[:byexpertise].present?
      @skills = Skill.find(params[:byexpertise])
      @profiles = @profiles.joins(:skills).where(skills: { id: @skills.map(&:id) })
    end
  end

  def show
    @profile = Profile.active.find(params[:id])
  end
end
