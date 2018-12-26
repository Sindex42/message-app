feature 'Deleting a message' do
  scenario 'deleting' do
    add_and_view_full_message()
    click_link 'delete'

    expect(page).not_to have_link 'All your test belong'
  end
end
