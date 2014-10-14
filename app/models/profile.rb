class Profile < ActiveRecord::Base
  has_and_belongs_to_many :skills

  scope :active, -> { where(active: true) }

  mount_uploader :picture, PictureUploader

  def full_name
    "#{firstname} #{lastname}"
  end

  def to_param
    "#{full_name.parameterize}-#{id}"
  end
end
