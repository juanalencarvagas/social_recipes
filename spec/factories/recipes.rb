FactoryGirl.define do
  factory :recipe do
    name "Macarronada"
    cuisine "Cozinha Italiana"
    food_type "Macarrão"
    dish_qtd 2
    prep_time 3.5
    difficult_level "Fácil"
    ingredients "Macarrão, Molho de tomate"
    directions "Instruções"
  end
end
