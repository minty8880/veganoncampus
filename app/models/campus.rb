class Campus < ActiveRecord::Base
  self.table_name = 'campuses'
  belongs_to :institution
  has_many   :outlets

  default_scope { includes(:institution).order('institutions.name ASC') }

  def to_s
    name
  end
end
