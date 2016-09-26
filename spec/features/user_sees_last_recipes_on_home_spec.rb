require 'rails_helper'
feature 'User sees last 20 recipes on home' do
  scenario 'Successfully' do
    create_list(:recipe, 20)
    visit root_path

    expect(page).to have_no_content 'Macarronada21'
  end
end
