class Institution < ActiveRecord::Base
  has_many :campuses, class_name: 'Campus'
  has_many :users

  def to_s
    name
  end
end
