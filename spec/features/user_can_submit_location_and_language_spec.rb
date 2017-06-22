feature 'user can submit location & langauge' do
  scenario 'user finds the form' do
    visit '/'
    click_on 'Submit Data'
    expect(page).to have_content('Your data here:')
  end
  scenario 'user can see a location field' do
    visit 'responses/new'
    expect(page).to have_content('Location:')
  end
  scenario 'user can see a languages field' do
    visit 'responses/new'
    expect(page).to have_content('Languages:')
  end
  scenario 'user can select from a list of languages' do
    visit 'responses/new'
    check('response_languages_', match: :first)
  end
  scenario 'user can select multiple languages' do skip
    visit 'responses/new'
    check('response_languages_', match: :first)
    find('a', text: 'Berlin', match: :prefer_exact)
  end
end
