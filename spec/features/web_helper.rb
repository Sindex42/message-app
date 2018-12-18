<<<<<<< HEAD
def post_message_and_submit
  visit '/'
  fill_in :message, with: "Here's the first message"
=======
def add_message_and_submit
  visit '/'
  fill_in :message, with: 'Just foo, no bar'
>>>>>>> b148565
  click_button 'Submit'
end
