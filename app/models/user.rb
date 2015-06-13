class User < ActiveRecord::Base
  belongs_to :institution
  validates :first_name, :email, presence: true

end
