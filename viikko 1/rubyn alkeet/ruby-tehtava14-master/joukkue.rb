class Joukkue
  def initialize(name)
    @name = name
    @pelaajat = []
  end

  def lisaa_pelaaja(pelaaja)
    @pelaajat << pelaaja
  end

  def maaleja_yhteensa
    @pelaajat.inject(0) { |maalit, x| maalit + x.maaleja}
  end

  def paras_maalintekija
    @pelaajat.max_by { |pelaaja| pelaaja.maaleja }
  end
  def to_s
    "#{@name}, pelaajia #{@pelaajat.count}, maaleja yhteensä #{maaleja_yhteensa}"
  end
end