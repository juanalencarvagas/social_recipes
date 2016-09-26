require 'rails_helper'
feature 'User inserts recipes' do
  scenario 'Successfully' do
    create(:cuisine, kind: 'Italiana')
    create(:food_type, name: 'Caseira')
    create(:recipe_difficulty, level: 'Fácil')
    visit new_recipe_path

    fill_in 'Nome da receita', with: 'Macarronada'
    select 'Italiana', from: 'Cozinha'
    select 'Caseira',  from: 'Tipo de comida'
    fill_in 'Quantas pessoas serve', with: '2'
    fill_in 'Tempo de preparo (min)', with: '3.0'
    select 'Fácil', from: 'Nível de dificuldade'
    fill_in 'Ingredientes', with: 'Macarrão, Molho de tomate'
    fill_in 'Passo a passo', with: 'Instruções'
    # attach_file('Nenhum arquivo selecionado', Rails.root + "macarronada.jpg")
    click_on 'Cadastrar Receita'

    expect(page).to have_content 'Nome da receita: Macarronada'
    expect(page).to have_content 'Italiana'
    expect(page).to have_content 'Macarrão'
    expect(page).to have_content '2'
    expect(page).to have_content '3.0 min.'
    expect(page).to have_content 'Fácil'
    expect(page).to have_content 'Macarrão, Molho de tomate'
    expect(page).to have_content 'Instruções'
    # expect(page).to have_css("img[src*='macarronada.jpg']")
  end

  scenario 'Unsuccessfully' do
    visit new_recipe_path

    fill_in 'Nome da receita', with: ''
    select '', from: 'Tipo de comida'
    fill_in 'Ingredientes', with: ''
    fill_in 'Passo a passo', with: ''
    click_on 'Cadastrar Receita'

    expect(page).to have_content 'Preencha os campos obrigatórios'
  end
end
