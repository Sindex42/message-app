feature 'Editing message' do
  background { add_and_view_full_message() }

  scenario 'returning to the index page without editing' do
    click_link 'home'

    expect(page).to have_content 'Messaging App'
    find_field('Type message here').value
    find_button('Submit').click
  end

  scenario 'proceeding to page to edit message' do
    click_link 'edit'

    expect(page).to have_content ('All your test belong to us')
  end

  scenario 'editing message' do
    click_link 'edit'
    fill_in :text, with: 'REDACTED'
    click_button 'Update'

    expect(page).not_to have_content ('All your test belong to us')
    expect(page).to have_content ('REDACTED')
  end
end
