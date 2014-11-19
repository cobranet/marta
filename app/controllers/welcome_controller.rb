# -*- coding: utf-8 -*-
class WelcomeController < ApplicationController
  def index
    @heroji = User.heroji
    @knjige = Book.all
    @session = session
    if @session["1"] == nil
      @session["1"] = 0
    end
    if @session["2"] == nil
      @session["2"] = 0
    end

  end

  def pitanje
    br = params[:pitanje].to_i
    render json: { pitanje: Pitanje.where(broj: br).first.pitanje,cije: User.cije(br),image: User.pitimage(br) }
  end

  def odgovor
    pitanje = params[:pitanje]
    odgovor = params[:odgovor]
    
    if Odgovor.check(pitanje,odgovor) == false
      rez = 'not ok'
      session[pitanje] = session[pitanje] + 1
    else
      session["tacno#{pitanje}"] = 1
      rez = 'ok'
    end
    Aktivnost.zabelezi(current_user.id,pitanje,odgovor,rez)

    if current_user.is_guest? == false
      tacno = current_user.tacno(pitanje)
    else
      tacno = "Ulogovani ste kao gost #{User.cije(pitanje.to_i)} pitanje ste rešili."
    end
    poruka = current_user.poruka
    if current_user.no_more(pitanje) == 1 || session[pitanje] > 3 
      nomore = 1
    else
      nomore = 0
    end
    render json: {od: odgovor, pitanje: pitanje , rez: rez , poruka: poruka,tacno: tacno, no_more: nomore}
  end 
end
