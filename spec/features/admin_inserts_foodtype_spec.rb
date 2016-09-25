require 'rails_helper'
feature 'Admin inserts food type' do
  scenario 'Successfully' do
    visit new_food_type_path

    fill_in 'Nome do tipo', with: 'Sobremesa'
    click_on 'Incluir tipo'

    expect(page).to have_content 'Nome do tipo: Sobremesa'
  end
  scenario 'Unsuccessfully' do
    visit new_food_type_path

    fill_in 'Nome do tipo', with: ''
    click_on 'Incluir tipo'

    expect(page).to have_content 'Inclua o nome do tipo.'
  end
end
