require "rails_helper"

feature "registration process"  do
  scenario "user can register" do
    visit root_path
    click_on "Register"

    within "main" do
      fill_form
      click_on "Register"
    end

    user = User.last

    expect(page).to have_content I18n.t("flash.users.create.notice")
    expect(user.email).to eq "sam@example.com"
    expect(current_path).to eq root_path
    expect(page).to have_content(user.first_name)
    expect(page).not_to have_content "Register"
  end

  scenario "can see errors" do
    visit sign_up_path

    within "main" do
      click_on "Register"
    end

    expect(page).to have_content I18n.t("flash.users.create.alert")
  end

  scenario "can select an institution" do
    institution = create(:institution)
    visit sign_up_path

    within "main" do
      fill_form
      select institution.name, from: "user[institution_id]"
      click_on "Register"
    end

    expect(User.last.institution).to eq institution 
  end

  private

  def fill_form
    fill_in "user_first_name", with: "Sam"
    fill_in "Email", with: "sam@example.com"
    fill_in "Password", with: "password"
  end
end
