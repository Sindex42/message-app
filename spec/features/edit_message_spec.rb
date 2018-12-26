feature 'Editing a message' do
  background { add_and_view_full_message() }

  scenario 'returning to the index page without editing' do
    click_button 'Home'

    expect(page).to have_content 'Messaging App'
    find_field('Type message here').value
    find_button('Submit').click
  end

  scenario 'proceeding to page to edit message' do
    click_button 'Edit'

    expect(find_field().value).to eq 'All your test belong to us'
  end

  scenario 'editing message and returning to index' do
    click_button 'Edit'
    fill_in :text, with: 'REDACTED'
    click_button 'Update'

    expect(page).not_to have_content ('All your test belong to us')
    expect(page).to have_content ('REDACTED')
  end
end
