feature 'Hit Points' do
  scenario 'displaying hit points' do
    visit('/')
    fill_in :p1_name, with: 'Callum'
    fill_in :p2_name, with: 'Stuart'
    click_button 'Submit'
    expect(page).to have_content 'Callum: 100hp'
  end
end
