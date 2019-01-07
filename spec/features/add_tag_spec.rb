feature 'Adding a tag' do
  scenario 'viewing field to add tag' do
    visit '/'

    find_field('add tag').value
  end
end
