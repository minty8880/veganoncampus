class Campus < ActiveRecord::Base
  self.table_name = 'campuses'
  belongs_to :institution
  has_many   :outlets
end
