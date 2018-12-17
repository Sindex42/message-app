feature 'Testing the homepage' do
  scenario 'it displays a header' do
    visit '/'

    expect(page).to have_content 'Messaging App'
  end

  scenario 'it displays a form' do
    visit '/'

    find_field('Type message here').value
    find_button('Submit').click
  end
end
