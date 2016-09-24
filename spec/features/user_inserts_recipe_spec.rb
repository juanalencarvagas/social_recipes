require 'rails_helper'
feature 'User inserts recipes' do
  scenario 'Successfully' do
    visit new_recipe_path

    fill_in 'Nome da receita',       with: 'Macarronada'
    fill_in 'Cozinha',               with: 'Cozinha Italiana'
    fill_in 'Tipo de comida',        with: 'Macarrão'
    fill_in 'Quantas pessoas serve', with: '2'
    fill_in 'Tempo de preparo',      with: '3.0'
    fill_in 'Nível de dificuldade',  with: 'Fácil'
    fill_in 'Ingredientes',          with: 'Macarrão, Molho de tomate'
    fill_in 'Passo a passo',         with: 'Instruções'
    click_on 'Cadastrar Receita'

    expect(page).to have_content 'Nome da receita: Macarronada'
    expect(page).to have_content 'Cozinha Italiana'
    expect(page).to have_content 'Macarrão'
    expect(page).to have_content '2'
    expect(page).to have_content '3.0 min.'
    expect(page).to have_content 'Fácil'
    expect(page).to have_content 'Macarrão, Molho de tomate'
    expect(page).to have_content 'Instruções'
  end

  scenario 'Unsuccessfully' do
    visit new_recipe_path

    fill_in 'Nome da receita',       with: ''
    fill_in 'Cozinha',               with: ''
    fill_in 'Tipo de comida',        with: ''
    fill_in 'Ingredientes',          with: ''
    fill_in 'Passo a passo',         with: ''
    click_on 'Cadastrar Receita'

    expect(page).to have_content 'Preencha os campos obrigatórios'
  end
end
