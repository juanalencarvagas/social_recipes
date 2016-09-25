FactoryGirl.define do
  factory :recipe do
    name 'Macarronada'
    food_type
    dish_qtd 2
    prep_time 3.5
    recipe_difficulty
    ingredients 'Macarrão, Molho de tomate'
    directions 'Instruções'
    cuisine
  end
end
