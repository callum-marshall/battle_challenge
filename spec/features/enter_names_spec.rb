feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Callum'
    fill_in :player_2_name, with: 'Stuart'
    click_button 'Submit'
    expect(page).to have_content 'Callum vs. Stuart'
  end
end
