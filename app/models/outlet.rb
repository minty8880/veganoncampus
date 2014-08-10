class Outlet < ActiveRecord::Base
  belongs_to :campus
  has_many :foods

  default_scope { order(name: :asc) }

  def to_s
    name
  end
end
