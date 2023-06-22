# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Owner.create([
  { name: "John", email: "john@test.com", age: 20},
  { name: "Jane", email: "jane@test.com", age: 30},
  { name: "Bob", email: "bob@test.com", age: 40},
])

Animal.create([
  { age: 2.5, color: "black", weight: '1.5 kg' ,species: "dog" },
  { age: 4.5, color: "brown", weight: '2.5 kg' ,species: "dog" },
  { age: 3, color: "white", weight: '0.5 kg' ,species: "cat" },
  { age: 8, color: "brown", weight: '6.5 kg' ,species: "cat" },
  { age: 5, color: "black", weight: '4.5 kg' ,species: "cat" },
  { age: 6, color: "green", weight: '5.5 kg' ,species: "turtle" },
  { age: 5.5, color: "brown", weight: '10.5 kg' ,species: "turtle" },
  { age: 8, color: "black", weight: '0.2 kg' ,species: "parrot" },
  { age: 15, color: "white", weight: '0.01 kg' ,species: "fish" },
  { age: 1, color: "black", weight: '0.02 kg' ,species: "fish" },
])

john = Owner.find_by(email: "john@test.com")
jane = Owner.find_by(email: "jane@test.com")
bob = Owner.find_by(email: "bob@test.com")

dog1 = Animal.where(species: "dog").first
dog2 = Animal.where(species: "dog").last

cat1 = Animal.where(species: "cat").first
cat2 = Animal.where(species: "cat").last

fish1 = Animal.where(species: "fish").first
fish2 = Animal.where(species: "fish").last

Pet.create([
  { name: "Max", owner: john, animal: dog1 },
  { name: "Buddy", owner: jane, animal: dog2 },
  { name: "Charlie", owner: bob, animal: cat1 },
])

john.pets.create({ name: "Jack", animal: cat2 })
jane.pets.create({ name: "Cooper", animal: fish1 })
bob.pets.create({ name: "Rocky", animal: fish2 })
