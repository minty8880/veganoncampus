require "rails_helper"

describe Institution do
  it { should have_many(:users) }
end
