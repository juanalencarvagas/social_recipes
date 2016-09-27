require 'rails_helper'
feature 'User visit home page and sees recipe' do
  scenario 'Successfully' do
    create(:recipe, name: 'Macarronada')
    visit root_path

    expect(page).to have_content 'Macarronada'
  end
end
