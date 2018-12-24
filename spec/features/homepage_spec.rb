feature 'Displaying the homepage' do
  background { visit '/' }

  scenario 'displaying a header' do
    expect(page).to have_content 'Messaging App'
  end

  scenario 'displaying a form' do
    find_field('Type message here').value
    find_button('Submit').click
  end
end
