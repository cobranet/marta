# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pitanje.destroy_all
Odgovor.destroy_all
Book.destroy_all
                

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

               link: "http://www.laguna.rs/n675_knjiga_peti_leptir_laguna.html" },

             { naslov: "Zagonetne priče - IV",
               image: "zagonetne_price_-_knjiga_cetvrta-uros_petrovic_m.jpg",
               desc: "Serijal Zagonetne priče osvojio je nagradu NEVEN za najbolje knjige za decu i mlade iz oblasti popularne nauke, a dobitnik je i nagrade DOSITEJEVO PERO dečjeg žirija.",
               link: "http://www.laguna.rs/n1053_knjiga_zagonetne_price_-_knjiga_cetvrta_laguna.html" },

             { naslov: "Zagonetne priče - V",
               image: "zagonetne_price_-_knjiga_peta-uros_petrovic_m.jpg",
               desc: "Nove Zagonetne priče – novi izazovi za sve radoznale čitaoce. Nagrada „Dositejevo pero“ za najbolju knjigu za decu starijeg uzrasta u 2012.godini.",
               link: "http://www.laguna.rs/n2000_knjiga_zagonetne_price_-_knjiga_peta_laguna.html" },
             { naslov: "Aven i jazopas u zedlji Vauka",
               image: "aven_i_jazopas-uros_petrovic_m.jpg",
               desc: "Roman čistokrvne epske fantastike koji je otvorio novi pravac u srpskoj književnosti za decu i mlade. Proverite zašto je ova knjiga postala kultna čak i svetu odraslih!",
               link: "http://www.laguna.rs/n357_knjiga_aven_i_jazopas_u_zemlji_vauka_laguna.html" }

            ]);
