require "rails_helper"

describe "application/_user_session.html.haml" do
  context "when no current_user" do
    before do
      render("application/user_session.html.haml", current_user: nil)
    end

    it "does not display welcome message" do      
      expect(rendered).not_to include "Logged in as"
    end

    it "does not display logout link" do
      expect(rendered).not_to include sign_out_path
    end

    it "displays option to sign in" do
      expect(rendered).to include sign_in_path
    end
  end

  context "when current_user" do
    before do
      render("application/user_session.html.haml", current_user:  build_stubbed(:user))
    end

    it "displays welcome message" do
      expect(rendered).to include "Logged in as"
    end

    it "displays an option to log out" do
      expect(rendered).to include sign_out_path
    end
  end
end
