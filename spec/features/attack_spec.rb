feature 'attack' do
  scenario 'get confirmation when attacking another player' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'John attacked Paul'
  end

  scenario 'attack reduces other players hp by 10' do
    sign_in_and_play
    expect($game.player_2.hp).to eq 60
    click_link 'Attack'
    click_link 'Return'
    expect($game.player_2.hp).to eq 50
  end

end