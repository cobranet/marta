# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  # This is from omniauth gem
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
  # Who ask question .. must be moved to database
  def self.cije(broj) 
    if  broj == 1.to_i 
       cije = " Martino " 
    else
       cije = "Kjarino" 
    end  
  end
  def self.pitimage(broj)
    if broj == 1.to_i
      return "marta.png"
    else
      return "kjara.png"
    end
  end
  # format date in Serbian ?
  def datum(d)
    d.strftime("%d-%m-%Y")
  end
  def all_answered
     tacno(1)!=nil && tacno(2) != nil
  end
  # WHo is solve problem
  def self.heroji
    a = Aktivnost.select("user_id as user_id,max(kad) as kad").where(rez: 'ok').group("user_id").order('kad').limit(10)
    puts a
    hero = [] 
    a.reverse.each do |a|
      user = User.find(a.user_id)
      hero << { image: user.image, datum: a.kad } 
    end 
    hero
  end

  #Message for solvers
  def tacno(pitanje)
    t = Aktivnost.where(user_id: self.id, pitanje: pitanje,rez: 'ok').first
    a = nil 
    if t != nil
      a= "Vi ste stvarno pametni i na #{User.cije(pitanje)} ste odgovorili #{datum(t.kad)}.."
    end
  end
  
  
  # poruka za usera
  def poruka
    last = Aktivnost.where(user_id: self.id).order(kad: :desc).first
    if last == nil 
      poruka = "Prvi put ste ovde. Dobrodošli!"
    else
      koliko =  Aktivnost.where(user_id: self.id ).count
      cijep = User.cije(last.pitanje)
      poruka = "Zadnji pokušaj je bio #{datum(last.kad)} ...na #{cijep} pitanje  rekli ste #{last.odgovor}. Probali ste #{koliko} puta. "
    end
    poruka 
  end  
  # poruka za nelogovane 
  def self.nelogovan 
    odgovora = 0
    usera = 0
    koliko = Aktivnost.select("user_id as user_id,count(kad) as koliko").group("user_id")
    koliko.each do |user|          
      usera = usera + 1
      odgovora = odgovora + user[:koliko]
    end  
    n = "Do sada je  #{usera} čitalaca pokušalo  #{odgovora} puta"
  end

  def self.delete_activity(user_id) 
    Aktivnost.where(user_id: user_id).destroy_all
  end  
end
