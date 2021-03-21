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
  Question.create(title: 'Le goût', score: 1, description: 'Le repas était-il bon ?', survey_id: s.id)
  Question.create(title: "L'ambiance", score: 1, description: 'Y avait-il une bonne ambiance lors du repas ?', survey_id: s.id)
  Question.create(title: 'la présentation', score: 1, description: 'Y a-t-il eu un effort de présentation lors du repas ?', survey_id: s.id)
end