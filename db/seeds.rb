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
User.destroy_all                
Aktivnost.destroy_all

User.create([ { uid: "guest" , id: 0, uid: "guest" , name: "guest" }]) 
Pitanje.create([ { pitanje: "Kako glasi rešenje Martine zagonetke?",
                   broj: 1,
                   },
                 { pitanje: "Kako glasi rešenje Kjarine zagonetke?",
                   broj: 2}
])

Odgovor.create([ { pitanje_id: 1,
                   odgovor: 'ko0ycEluksloE' },
                 { pitanje_id: 2,
                   odgovor: 'doEaTFl3lQqWE' }
               ])
               
                   
Book.create([ 

             { naslov: "Misterije Ginkove ulice",
                image: "misterije_ginkove_ulice-uros_petrovic_m.jpg",
                desc: "Mistične mozgalice su pred vama a zelenokosa Marta vam moze pomoći. Kako? To je tajna! Nagrada kompanije Novosti Gordana Brajović za najbolju knjigu za decu i mlade u 2008. Nagrada Neven za 2008. godinu Objavljena u Italiji i Mađarskoj.",
                link: "http://www.laguna.rs/n905_knjiga_misterije_ginkove_ulice_laguna.html"},

             { naslov: "Deca bestragije",
                image: "deca_bestragije-uros_petrovic_m.jpg",
                desc: "Ovo je priča o tajni, davno začetoj i nikada ranije ispričanoj. Nagrada Zmajevih dečjih igara „Rade Obrenović“ za najbolji roman namenjen deci i mladima u 2013. godini.",
                link: "http://www.laguna.rs/n2124_knjiga_deca_bestragije_laguna.html"},
                
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
               link: "http://www.laguna.rs/n357_knjiga_aven_i_jazopas_u_zemlji_vauka_laguna.html" },

             { naslov: "Mračne tajne ginkove ulice",
               image: "mracne_tajne_ginkove_ulice_-_roman_u_zagonetkama-uros_petrovic_m.jpg",
               desc: "Spremite se za avanturu kakvu nikada niste doživeli čitajući! Nagrada „Dositejevo pero“ za najbolju knjigu za decu starijeg uzrasta u 2011. godini. ",
               link: "http://www.laguna.rs/n1793_knjiga_mracne_tajne_ginkove_ulice_-_roman_u_zagonetkama_laguna.html"},

            { naslov: "Zagonetne priče - knjiga prva",
               image: "zagonetne_price_-_knjiga_prva-uros_petrovic_m.jpg",
               desc: "Evo knjige za one koji vole izazove i mozgalice! Probajte da rešite trideset zagonetnih priča koje obećavaju nezaboravnu avanturu mozga.Nagrada „Neven” za najbolju naučno popularnu knjigu.",
               link: "http://www.laguna.rs/n411_knjiga_zagonetne_price_-_knjiga_prva_laguna.html"},

           { naslov: "Zagonetne priče - knjiga druga",
               image: "zagonetne_price_-_knjiga_druga-uros_petrovic_m.jpg",
               desc: "Knjiga prva Vam nije bila dovoljno izazovna?! Pokušajte sa istom lakoćom da rešite zagonetke iz knjige druge! Nagrada Neven za najbolju naučno popularnu knjigu u 2006. godini.",
               link: "http://www.laguna.rs/n430_knjiga_zagonetne_price_-_knjiga_druga_laguna.html" },

           { naslov: "Zagonetne priče - knjiga treća",
               image: "zagonetne_price_-_knjiga_treca-uros_petrovic_m.jpg",
               desc: "Ko voli zagonetke i zanimljive priče, uživaće i u trećem nastavku ovih zabavnih zadataka. Nagrada Dositejevo pero za najbolju knjigu za decu starijeg uzrasta u 2007.godini",
               link: "http://www.laguna.rs/n666_knjiga_zagonetne_price_-_knjiga_treca_laguna.html"}


            ]);


