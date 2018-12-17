feature 'Submitting a message' do
  scenario 'it saves a message' do
    visit '/'
    fill_in :message, with: 'Just foo, no bar'
    click_button 'Submit'

    expect(page).to have_content 'Messaging App'
    expect(page).to have_content 'Just foo, no bar'
  end
end
