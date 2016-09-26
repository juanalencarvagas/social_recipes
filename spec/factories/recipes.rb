FactoryGirl.define do
  factory :recipe do
    
    sequence(:name, 1) { |n| "Macarronada#{n}" }
    food_type
    dish_qtd 2
    prep_time 3.5
    recipe_difficulty
    ingredients 'Macarrão, Molho de tomate'
    directions 'Instruções'
    cuisine
    # picture 'macarronada.jpg'
  end
end
