require 'rails_helper'
feature 'Admin inserts recipe difficulty' do
  scenario 'Successfully' do
    visit new_recipe_difficulty_path

    fill_in 'Nível', with: 'Simples'
    click_on 'Incluir nível'

    expect(page).to have_content 'Nível: Simples'
  end
end
