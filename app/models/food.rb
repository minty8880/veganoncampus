class Food < ActiveRecord::Base
  belongs_to :outlet
  belongs_to :user

  def to_s
    description
  end
end
