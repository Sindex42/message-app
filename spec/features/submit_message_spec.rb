feature 'Submitting a message' do
  scenario 'it saves a message' do
    add_message_and_submit

    expect(page).to have_content 'Messaging App'
    expect(page).to have_content 'Just foo, no bar'
  end

  scenario 'it adds the next message to the history' do
    add_message_and_submit
    fill_in :message, with: 'Just bar, no foo'
    click_button 'Submit'

    expect(page).to have_content 'Just foo, no bar'
    expect(page).to have_content 'Just bar, no foo'
  end
end
