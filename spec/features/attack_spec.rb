feature 'attack' do
  srand(2)
  scenario 'get confirmation when attacking another player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'John attacked Paul'
  end

  scenario 'attack reduces other players hp by 10' do
    sign_in_and_play
    expect($game.player_1.hp).to eq 60
    click_link 'Attack'
    click_button 'Return'
    expect($game.player_1.hp).to eq 50
  end

end