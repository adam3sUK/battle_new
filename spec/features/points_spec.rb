feature 'hit points' do
  scenario 'display hit points' do
    sign_in_and_play
    expect(page).to have_content 'Bob hp: 50/50, Rob hp: 50/50'
  end
end