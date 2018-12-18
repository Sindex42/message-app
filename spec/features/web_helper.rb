def post_message_and_submit
  visit '/'
  fill_in :message, with: "Here's the first message"
  click_button 'Submit'
end
