class Food < ActiveRecord::Base
  belongs_to :outlet

  def to_s
    description
  end
end
