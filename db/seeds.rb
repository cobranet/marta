# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pitanje.create([ { pitanje: "Koliko Marta ima godina?",
                   broj: 1,
                   },
                 { pitanje: "Koga briga za ovu drugu?",
                   broj: 2}
])

Odgovor.create([ { pitanje_id: 1,
                   odgovor: '12' },
                 { pitanje_id: 1,
                   odgovor: 'dvanest' },
                 { pitanje_id: 2,
                   odgovor: 'mene' },
                 { pitanje_id: 2,
                   odgovor: 'nikoga' }])
               
                   
