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

  scenario 'it displays only the first 20 characters of a message' do
    visit '/'
    fill_in :message, with: 'MessageExceeds20Character'
    click_button 'Submit'

    expect(page).to have_content 'MessageExceeds20Char'
    expect(page).not_to have_content 'acter'
  end
end
