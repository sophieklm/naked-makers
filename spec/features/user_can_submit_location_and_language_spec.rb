feature 'user can submit location & langauge' do
  scenario 'user finds the form' do
    visit '/'
    click_on 'Submit data'
    expect(page).to have_content('Your data here:')
  end
end
