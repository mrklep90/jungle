require 'rails_helper'

RSpec.feature "Visitor can login", type: :feature, js: true do

  before :each do
    User.create(first_name: 'michael', last_name: 'klepac', email: 'mklepac90@gmail.com', password: 'password', password_confirmation: 'password')
  end

  scenario "The navbar changes to Logout" do
    # ACT
    visit '/login'

    fill_in 'email', with: 'mklepac90@gmail.com'
    fill_in 'password', with: 'password'
    click_on 'Submit'

    # DEBUG
    # sleep(1)
    # save_screenshot

    # VERIFY
    expect(page).to have_text 'Logout'
  end 
end
