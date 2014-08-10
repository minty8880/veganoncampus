class Institution < ActiveRecord::Base
  has_many :campuses, class_name: 'Campus'

  def to_s
    name
  end
end
