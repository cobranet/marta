class Odgovor < ActiveRecord::Base
  def self.check(pit,odg)
    a = Odgovor.where( pitanje_id: pit, odgovor: odg.downcase.crypt("SomethingDifferent")).first
    a != nil
  end
end
