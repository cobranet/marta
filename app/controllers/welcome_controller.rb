class WelcomeController < ApplicationController
  def index
    @heroji = User.heroji
    @knjige = Book.all
    @session = session
    if @session["1"] is null 
      @session["1"] = 0
    end
    if @session["2"] is null 
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
    
    if Odgovor.where(pitanje_id: pitanje,odgovor: odgovor).length == 0
      rez = 'not ok'
      puts "####################################"
      puts session[pitanje] 
      puts "####################################"   
      session[pitanje] = session[pitanje] + 1
    else
      rez = 'ok'
    end
    
    Aktivnost.zabelezi(current_user.id,pitanje,odgovor,rez)
    tacno = current_user.tacno(pitanje)
    poruka = current_user.poruka
    if current_user.no_more(pitanje) == 1 || session[pitanje] > 3 
      nomore = 1
    else
      nomore = 0
    end
    render json: {od: odgovor, pitanje: pitanje , rez: rez , poruka: poruka,tacno: tacno, no_more: nomore}
  end 
end
