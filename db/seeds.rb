# -*- coding: utf-8 -*-
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
               
                   
Book.create([ 
             { naslov: "Misterije Ginkove ulice",
                image: "misterije_ginkove_ulice-uros_petrovic_m.jpg",
                desc: "Mistične mozgalice su pred vama a zelenokosa Marta vam moze pomoći. Kako? To je tajna! Nagrada kompanije Novosti Gordana Brajović za najbolju knjigu za decu i mlade u 2008. Nagrada Neven za 2008. godinu Objavljena u Italiji i Mađarskoj.",
                link: "http://www.laguna.rs/n905_knjiga_misterije_ginkove_ulice_laguna.html"},
                
             { naslov: "Tajne veštine Marte Smart",
               image: "tajne_vestine_marte_smart-uros_petrovic_m.jpg",
               desc: "Spremite se za najzanimljiviju noć u životu! Treći deo hit serijala za sve uzraste.",
               link: "http://www.laguna.rs/n2292_knjiga_tajne_vestine_marte_smart_laguna.html" },
             
             { naslov: "Peti leptir",
               image: "peti_leptir-uros_petrovic_m.jpg",
               desc: "Novi roman Uroša Petrovića, poetski, humoran i mističan. Nagrada Zmajevih dečijih igara 'Rade Obrenović' za najbolji roman namenjen deci i mladima u 2007. godini.",

               link: "http://www.laguna.rs/n675_knjiga_peti_leptir_laguna.html" }
            ]);
