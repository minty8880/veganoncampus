module CustomStubs
  def stub_current_user(user)
    allow(controller).to receive(:current_user).and_return(user)
  end
end

RSpec.configure do |config|
  config.include CustomStubs
end
