# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

5.times do |i|
  Event.create(status: 'terminé', total_event: 0, nb_participants: 4)
end


20.times do |i|
  
  
  id = Event.last.id.to_i
  e = Event.find(id - (i%5))
  s = Survey.create(event_id: (id - (i%5)))
 
  q1 = Question.create(title: 'le goût', score: rand(1..4), description: "Alors, comment c'était bon ?", survey_id: s.id)
  q2 = Question.create(title: 'la présentation', score: rand(1..4), description: "Alors, comment c'était joliment présenté ?", survey_id: s.id)
  q3 = Question.create(title: "l'ambiance", score: rand(1..4), description: "Alors, comment c'était ambiancé ?", survey_id: s.id)
  
  tot = q1.score + q2.score + q3.score
  e.update(id: id - (i%5), total_event: tot, nb_participants: 4)
  s.save
end