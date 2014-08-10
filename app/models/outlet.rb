class Outlet < ActiveRecord::Base
  belongs_to :campus
  has_many :foods

  def to_s
    name
  end
end
