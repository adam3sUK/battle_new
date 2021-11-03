feature 'hit points' do
  scenario 'display hit points' do
    visit('/')
    fill_in 'player_1', with: 'Bob'
    fill_in 'player_2', with: 'Rob'
    click_button 'Submit'
    expect(page).to have_content 'Bob hp: 50/50, Rob hp: 50/50'
  end
end