class Domain < ActiveRecord::Base
  has_many :skills

  def to_label
    "#{id} - #{label}"
  end
end
