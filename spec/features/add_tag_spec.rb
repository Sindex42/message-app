feature 'Adding a tag' do
  scenario 'viewing field to add tag' do
    visit '/'

    find_field('add tag').value
  end

  scenario 'seeing a tag attached to a message' do
    visit '/'
    fill_in :message, with: 'All your tags belong to us'
    fill_in :tag, with: 'Base'
    click_button 'Submit'
    click_link 'All your tags belong'

    expect(page).to have_content 'Tag: Base'
  end
end
