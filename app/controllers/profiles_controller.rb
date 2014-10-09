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

  def create
    @profile = Profile.create(params.require(:profile).permit(permitted_params))

    if @profile.valid?
      redirect_to created_profile_path(@profile)
    end
  end

private
  def permitted_params
    [
      :firstname,
      :lastname,
      :last_position,
      :picture,
      :email,
      :phone,
      :someone_else,
      :sender_email,
      :linked_in_url,
      :twitter_url,
      :facebook_url,
      :google_plus_url,
      :author,
      :author_url_1,
      :author_url_2,
      :author_url_3,
      :speaker,
      :speaker_url_1,
      :speaker_url_2,
      :speaker_url_3,
      :teacher,
      :teacher_schools,
      :open_source,
      :open_source_url_1,
      :open_source_url_2,
      :open_source_url_3,
      { skill_ids: [] }
    ]
  end

end
