require 'rails_helper'
feature 'Admin inserts cuisine' do
  scenario 'Successfully' do
    visit new_cuisine_path

    fill_in 'Tipo', with: 'Italiana'
    click_on 'Incluir cozinha'

    expect(page).to have_content 'Italiana'
  end
  scenario 'Unsuccessfully' do
    visit new_cuisine_path

    fill_in 'Tipo', with: ''
    click_on 'Incluir cozinha'

    expect(page).to have_content 'Inclua o tipo da cozinha.'
  end
end
