require 'rails_helper'
feature 'User visit home page and sees cuisines' do
  scenario 'Successfully' do
    create(:recipe, name: 'Macarronada')
    create(:cuisine)

    visit root_path

    expect(page).to have_css('h2', text: 'Cozinhas')
    expect(page).to have_content 'Italiana'


  end
end
