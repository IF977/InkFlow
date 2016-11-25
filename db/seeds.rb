# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "arthurnfarias", first_name: "Arthur", last_name: "Farias", email: "anf2@cin.ufpe.br", password: "264895", admin: true, editor: true)
User.create(username: "ccat", first_name: "Caio", last_name: "Cavalcanti", email: "ccat@cin.ufpe.br", password: "123456", admin: true, editor: true)