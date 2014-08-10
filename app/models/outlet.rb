class Outlet < ActiveRecord::Base
  belongs_to :campus
  has_many :foods
end
