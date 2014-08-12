class Campus < ActiveRecord::Base
  extend FriendlyId
  friendly_id :to_s, use: :slugged
  has_many :foods, through: :outlets

  self.table_name = 'campuses'
  belongs_to :institution
  has_many   :outlets

  default_scope { includes(:institution).order('institutions.name ASC') }

  def outlet_count
    outlets.count
  end

  def food_count
    foods.count
  end

  def to_s
    "#{institution} #{name}"
  end
end
