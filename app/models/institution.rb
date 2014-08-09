class Institution < ActiveRecord::Base
  has_many :campuses, class_name: 'Campus'
end
