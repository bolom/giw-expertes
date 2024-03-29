class Skill < ActiveRecord::Base
  has_and_belongs_to_many :profiles
  belongs_to :domain

  def to_label
    "#{id} - #{label}"
  end

  def to_url
    "#{label.parameterize}-#{id}"
  end
end
