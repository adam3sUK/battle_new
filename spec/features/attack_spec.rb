feature 'attack' do
  scenario 'get confirmation when attacking another player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Bob attacked Rob'
  end
end