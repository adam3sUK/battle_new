feature 'hit points' do
  scenario 'display hit points' do
    sign_in_and_play
    expect(page).to have_content 'John hp: 60/60, Paul hp: 60/60'
  end
end