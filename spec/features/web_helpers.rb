def sign_in_and_play
  visit('/')
  fill_in :p1_name, with: 'Callum'
  fill_in :p2_name, with: 'Stuart'
  click_button 'Submit'
end
