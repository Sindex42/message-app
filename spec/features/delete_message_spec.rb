feature 'Deleting a message' do
  scenario 'deleting a message and returning to index' do
    add_message_and_submit
    add_and_view_full_message
    click_button 'Delete'

    expect(page).to have_link 'Just foo, no bar'
    expect(page).not_to have_link 'All your test belong'
  end
end
