require 'rails_helper'

RSpec.feature "Responses page",  type: :feature do

  scenario "Can see responses page", type: :feature do
    visit('/')
    click_on('Submit Data')
    fill_in 'location', :with => 'Birmingham'
    check('1')
    check('2')
    expect(page).to have_content('Data submitted')
  end


end
