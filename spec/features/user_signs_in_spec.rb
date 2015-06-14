require "rails_helper"

feature "user can sign in" do
  scenario "user can sign in" do
    user = create(:user)

    visit root_path
    click_on "Sign in"

    within "main" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Sign in"
    end

    expect(page).to have_content I18n.t("flash.authenticated.signed_in")
    expect(page).to have_content user.first_name
    expect(page).not_to have_content "Sign in"
  end

  scenario "can see login errors" do
    visit sign_in_path

    within "main" do
      click_on "Sign in"
    end

    expect(page).to have_content I18n.t("sessions.flashes.failed")
  end

  scenario "can log out" do
    user = create(:user)

    visit root_path
    click_on "Sign in"

    within "main" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Sign in"
    end

    click_on "Sign out"

    expect(page).to have_content I18n.t("flash.authenticated.signed_out")
    expect(page).not_to have_content user.first_name
    expect(page).to have_content "Sign in"
  end
end
