class Odgovor < ActiveRecord::Base
  def self.check(pit,odg)
    a = Odgovor.where( pitanje_id: pit, odgovor: "SomethingDifferent".crypt(odg.downcase)).first
    a != nil
  end
end
