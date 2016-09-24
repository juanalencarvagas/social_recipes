require 'rails_helper'
feature 'User visit home page and sees recipe' do
  scenario 'Successfully' do
    recipe = create(:recipe, name: 'Macarronada')
    visit root_path

    expect(page).to have_content 'Nome da receita: Macarronada'
  end
end
