# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

subjects = ['Mathematics', 'Physics', 'English Literature', 'Computer Science']

subjects.each do |subject|
  10.times do |i|
    Question.create(
      subject: subject,
      content: "What is #{i + 1} + #{i + 2} in #{subject}?",
      option1: "#{2 * (i + 1)}",
      option2: "#{2 * (i + 2)}",
      option3: "#{3 * (i + 1)}",
      option4: "#{3 * (i + 2)}",
      correct_option: rand(1..4)
    )
  end
end
