# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

5.times do |i|
  Event.create(status: 'done', total_event: 0, nb_participants: 4)
end

20.times do |i|
  ta = rand(1..4)
  p = rand(1..4)
  a = rand(1..4)
  tot = a + p + ta
  id = Event.last.id.to_i
  Survey.create(event_id: (id - (i%5)), tasty: ta, presentation: p, atmosphere: a, total: tot)
end