# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bathroom = Bathroom.create(park: "Airport Little League Park", latitude: 38.508932359829, longitude: -121.483599357993)
bathroom.save

bathroom = Bathroom.create(park: "Argonaut Park", latitude: 38.51822717043, longitude: -121.505121809116)
bathroom.save

bathroom = Bathroom.create(park: "Earl Warren Park", latitude: 38.527262952937, longitude: -121.416895069333)
bathroom.save

bathroom = Bathroom.create(park: "Franklin Boyce Community Park", latitude: 38.478240312181, longitude: -121.452453434246)
bathroom.save

bathroom = Bathroom.create(park: "John Fremont Park", latitude: 38.570852677373, longitude: -121.489110243271)
bathroom.save

bathroom = Bathroom.create(park: "George Sim Park", latitude: 38.513281321170300, longitude: -121.414827906638000)
bathroom.save

bathroom = Bathroom.create(park: "O'neil Field", latitude: 38.565932960766200, longitude: -121.504516970667000)
bathroom.save

bathroom = Bathroom.create(park: "Margarette 'MAMA' Marks Park", latitude: 38.634681964793800, longitude: -121.44045382735900)
bathroom.save
