require "rails_helper"

feature "logging in and out process" do
  scenario "user can log in" do
    user = create(:user)

    visit root_path
    click_on "Log in"

    within "main" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"
    end

    expect(page).to have_content I18n.t("flash.authenticated.signed_in")
    expect(page).to have_content user.first_name
    expect(page).not_to have_content "Log in"
  end

  scenario "can see login errors" do
    visit sign_in_path

    within "main" do
      click_on "Log in"
    end

    expect(page).to have_content I18n.t("sessions.flashes.failed")
  end

  scenario "can log out" do
    user = create(:user)

    visit root_path
    click_on "Log in"

    within "main" do
      fill_in "Email", with: user.email
      fill_in "Password", with: user.password
      click_on "Log in"
    end

    click_on "Log out"

    expect(page).to have_content I18n.t("flash.authenticated.signed_out")
    expect(page).not_to have_content user.first_name
    expect(page).to have_content "Log in"
  end
end
