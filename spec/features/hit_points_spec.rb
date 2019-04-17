feature 'Hit Points' do
  scenario 'displaying hit points' do
    sign_in_and_play
    expect(page).to have_content 'Callum: 100hp'
  end
end
