require "rails_helper"

describe User do
  it { should validate_presence_of(:first_name) }
  it { should validate_presence_of(:email) }
  it { should belong_to(:institution) }

  it "defaults to not being an admin" do
    expect(User.new).not_to be_admin
  end
end
