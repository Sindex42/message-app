feature 'Testing test infrastructure' do
  scenario 'it displays a message' do
    visit '/'

    expect(page).to have_content 'Hello'
  end
end
