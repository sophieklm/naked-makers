require 'rails_helper'

RSpec.feature "Responses page",  type: :feature do

  scenario "Can see responses page", type: :feature do
    visit('/')
    click_on('Submit Data')
    fill_in "response_location", :with => 'Birmingham'
    check('response_languages_', match: :first)
    click_on 'Save Response'
    expect(page).to have_content('Data submitted')
  end
end
