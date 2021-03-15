# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

flashcard_set_JS = FlashcardSet.create(title: "JavaScript")
flashcard_set_Ruby = FlashcardSet.create(title: "Ruby")
flashcard_set_React = FlashcardSet.create(title: "React")

flashcard_1 = Flashcard.create(
    card_number: 1,
    question: 'What is a service class?', 
    answer: 'A service class is a class specific to our domain that handles some of the business logic of the application.',
    flashcard_set_id: flashcard_set_JS.id 
)

flashcard_2 = Flashcard.create(
    card_number: 2,
    question: 'What does rack-CORS do?', 
    answer: 'This will allow you to test your APIs while developing them locally. With CORS enabled and your resources configured, you should be able to now run rails server, start up your API and begin sending requests to it.',
    flashcard_set_id: flashcard_set_JS.id 
)

flashcard_3 = Flashcard.create(
    card_number: 3,
    question: 'What happens when you use the --api flag?', 
    answer: "By using the --api flag, Rails will remove a lot of default features and middleware, mostly related to the browser, since it won't be needed. Controllers will inherit from ActionController::APIrather than ActionController::Base and generators will skip generating views.",
    flashcard_set_id: flashcard_set_Ruby.id 
)