puts "🌱 Seeding spices..."

# Seed your database here
151.times do
    pokemon = Pokemon.create(
        name: Faker::Games::Pokemon.name,
        location: Faker::Games::Pokemon.location,
        move: Faker::Games::Pokemon.move
        
    )

    rand(1..7).times do
        Review.create(
            rating: rand(1..10),
            text: Faker::Lorem.paragraph(sentence_count: 2, supplemental: false, random_sentences_to_add: 4),
            pokemon_id: pokemon.id
        )
    end
end

puts "✅ Done seeding!"