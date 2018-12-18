feature 'Submitting a message' do
  scenario 'it saves a message' do
    post_message_and_submit

    expect(page).to have_content 'Messaging App'
    expect(page).to have_content "Here's the first message"
  end

  scenario 'it adds the next message to the log' do
    post_message_and_submit
    fill_in :message, with: "Here's the second message"
    click_button 'Submit'

    expect(page).to have_content "Here's the first message"
    expect(page).to have_content "Here's the second message"
  end
end
