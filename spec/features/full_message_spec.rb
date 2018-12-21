feature 'Linking to full message' do
  scenario 'clicking on truncated message takes you to full text' do
    visit '/'
    fill_in :message, with: 'This message exceeds 20 characters'
    click_button 'Submit'

    click_link 'This message exceeds'
    expect(page).to have_content 'This message exceeds 20 characters'
  end

  context 'viewing full message' do
    background { add_and_view_full_message() }

    scenario 'returning to the index page' do
      click_link 'home'

      expect(page).to have_content 'Messaging App'
      find_field('Type message here').value
      find_button('Submit').click
    end

    scenario 'seeing link to edit message' do
      click_link 'edit'

      expect(page).to have_content ('All your test belong to us')
    end
  end
end
