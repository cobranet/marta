class Aktivnost < ActiveRecord::Base
  def self.zabelezi(user,pitanje,odgovor,rez) 
    ak = Aktivnost.new
    ak.user_id = user
    ak.pitanje = pitanje
    ak.odgovor = odgovor
    ak.rez = rez
    ak.kad = Time.now
    ak.save!
  end
end
