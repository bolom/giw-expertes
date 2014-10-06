class Profile < ActiveRecord::Base
  has_and_belongs_to_many :skills

  scope :active, -> { where(active: true) }

  def full_name
    "#{firstname} #{lastname}"
  end
end
