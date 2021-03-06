def add_message_and_submit
  visit '/'
  fill_in :message, with: 'Just foo, no bar'
  click_button 'Submit'
end

def add_and_view_full_message
  visit '/'
  fill_in :message, with: 'All your test belong to us'
  click_button 'Submit'
  click_link 'All your test belong'
end

def add_and_view_message_with_tag
  visit '/'
  fill_in :message, with: 'All your tags belong to us'
  fill_in :tag, with: 'Base'
  click_button 'Submit'
  click_link 'All your tags belong'
end
