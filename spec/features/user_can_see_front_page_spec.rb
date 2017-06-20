require 'rails_helper'

RSpec.feature "Front Page",  type: :feature do

  scenario "can see a front page with title", type: :feature do
    visit('/')
    expect(page).to have_content("Naked Makers")
  end

end
