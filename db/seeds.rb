puts "Destroying everything! 😈"
Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

puts "creating ingredients..."

Cocktail.create(name: "1")
Cocktail.create(name: "2")
Cocktail.create(name: "3")

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")

puts 'Creating cocktails...'

10.times do

  # cock = Cocktail.create(
    
  #   name: Faker::Beer.unique.name
  # )

  # 2.times do
    # my_ingredient = Ingredient.new(name: ['lemon', 'ice', 'mint leaves'].sample)
    my_dose = Dose.create!(description: Faker::Cannabis.health_benefit, cocktail: Cocktail.all[rand(0..2)], ingredient: Ingredient.all[rand(0..2)])

    # my_dose.ingredient = my_ingredient
    # my_dose.cocktail = cock

  # end
end

puts 'Done!'
