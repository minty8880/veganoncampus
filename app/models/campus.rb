class Campus < ActiveRecord::Base
  extend FriendlyId
  friendly_id :to_s, use: :slugged

  self.table_name = 'campuses'
  belongs_to :institution
  has_many   :outlets

  default_scope { includes(:institution).order('institutions.name ASC') }

  def to_s
    "#{institution} #{name}"
  end
end
