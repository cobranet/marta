# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.image = auth.info.image
      user.location = auth.info.location
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
  def poruka
    last = Aktivnost.where(user_id: self.id).order(kad: :desc).first
    if last == nil 
      poruka = "Zdravo #{self.name}... Prvi put ste ovde da vidimo šta znate!"
    else
      koliko =  Aktivnost.where(user_id: 1).count
      if last.pitanje == 1 
        cije = " Martino " 
      else
        cije = "Kjarino" 
      end  
      poruka = "Zdravo #{self.name}. Zadnji pokušaj je bio #{last.kad.strftime("%d/%m/%Y")} ...na #{cije} pitanje  rekli ste #{last.odgovor}...Probali ste #{koliko} puta. "
    end
    poruka 
  end  
end
