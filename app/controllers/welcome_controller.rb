class WelcomeController < ApplicationController
  def index
    @heroji = User.heroji
    @knjige = Book.all
  end

  def pitanje
    br = params[:pitanje].to_i
    render json: { pitanje: Pitanje.where(broj: br).first.pitanje,cije: User.cije(br),image: User.pitimage(br) }
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
    tacno = current_user.tacno(pitanje)
    poruka = current_user.poruka
    render json: {od: odgovor, pitanje: pitanje , rez: rez , poruka: poruka,tacno: tacno, no_more: current_user.no_more(pitanje) }
  end 
end
