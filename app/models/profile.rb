class Profile < ActiveRecord::Base
  scope :active, -> { where(active: true) }
end
