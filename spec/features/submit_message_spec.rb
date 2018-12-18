feature 'Submitting a message' do
  scenario 'it saves a message' do
<<<<<<< HEAD
    post_message_and_submit
=======
    add_message_and_submit
>>>>>>> b148565

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

  scenario 'it adds the next message to the history' do
    add_message_and_submit
    fill_in :message, with: 'Just bar, no foo'
    click_button 'Submit'

    expect(page).to have_content 'Just foo, no bar'
    expect(page).to have_content 'Just bar, no foo'
  end
end
