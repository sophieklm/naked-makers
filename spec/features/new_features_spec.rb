feature 'user can submit a city' do
scenario 'user fills in and submits city' do
  visit 'responses/new'
  fill_in 'response_city', with: ('London')
  check('1')
  click_on 'Submit Response'
  expect(page).to have_content('Data submitted')
end
end
