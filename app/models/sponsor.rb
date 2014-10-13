class Sponsor < ActiveRecord::Base
  mount_uploader :logo, LogoUploader
end
