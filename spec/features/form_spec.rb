feature 'form' do
  scenario 'completion of form leads to new page that displays name' do
    visit('/')
    fill_in 'Player_1', with: 'Bob'
    fill_in 'Player_2', with: 'Rob'
    click_button 'Submit'
    expect(page).to have_content 'Bob vs Rob'
  end
end