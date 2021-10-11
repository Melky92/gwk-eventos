# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rulings = Ruling.create([
  { name: "FT10"} ,
  { name: "BO3"} ,
  { name: "BO5"} ,
  { name: "Torneo Doble Eliminiación"} ,
  { name: "Torneo Round Robin"} ,
  { name: "Torneo Eliminación Directa"} ,
  ]);

teams = Team.create([
  { name: "GWK" } ,
  { name: "HWG" } ,
]);

games = Game.create([
  { name: "Ultimate" } ,
  { name: "Melee" } ,
  { name: "Mario Kart" } ,
  { name: "Nick brawl" } ,
  { name: "Smash 64" } ,
  { name: "Brawl" } ,
  { name: "Smash en 4" } ,
  { name: "Otro" } ,
])

event_statuses = EventStatus.create([
  { name: "Pendiente" } ,
  { name: "Concluido" } ,
  { name: "Cancelado" } ,
])

reach = Reach.create([
  { name: "Público" } ,
  { name: "Solo GWK" } ,
])