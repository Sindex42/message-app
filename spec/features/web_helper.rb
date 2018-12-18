def add_message_and_submit
  visit '/'
  fill_in :message, with: 'Just foo, no bar'
  click_button 'Submit'
end
