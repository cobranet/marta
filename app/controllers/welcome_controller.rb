class WelcomeController < ApplicationController
  def index
  end
  def pitanje
    br = params[:pitanje].to_i
    render json: { pitanje: Pitanje.where(broj: br).first.pitanje }
  end
  def odgovor
    pitanje = params[:pitanje]
    odgovor = params[:odgovor]
    
    if Odgovor.where(pitanje_id: pitanje,odgovor: odgovor).length == 0
      rez = 'not ok'
    else
      rez = 'ok'
    end
    Aktivnost.zabelezi(current_user.id,pitanje,odgovor,rez)
    poruka = current_user.poruka
    render json: {od: odgovor, pitanje: pitanje , rez: rez , poruka: poruka }
  end 
end
