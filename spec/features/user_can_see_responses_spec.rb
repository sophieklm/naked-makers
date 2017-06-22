require 'rails_helper'

RSpec.feature "Responses page",  type: :feature do

  scenario "Can see responses page", type: :feature do skip
    visit('/')
    click_on('Submit Data')
    fill_in "response_location", :with => 'Birmingham'
    check('1')
    expect(page).to have_content('Data submitted')
  end


end
