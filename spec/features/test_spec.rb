feature 'Testing the homepage' do
  scenario 'it displays a header' do
    visit '/'

    expect(page).to have_content 'Messaging App'
  end
end
