RSpec.describe 'luokka Pelaaja' do
  it "on määritelty oikeassa tiedostossa" do
    expect(File.exist? './pelaaja.rb' ).to be true
    require './pelaaja.rb'
    Pelaaja
  end

  it "konstruktori ja to_s toimivat" do
    require './pelaaja.rb'
    p = Pelaaja.new 'chang', 170
    expect(p.to_s).to eq("chang (170 cm) maaleja 0")

    p = Pelaaja.new 'arto', 181
    expect(p.to_s).to eq("arto (181 cm) maaleja 0")
  end

  it "maalien kasvatus toimii" do
    require './pelaaja.rb'
    p = Pelaaja.new 'chang', 170
    p.lisaa_maali
    expect(p.to_s).to eq("chang (170 cm) maaleja 1")
    p.lisaa_maali
    p.lisaa_maali
    p.lisaa_maali
    expect(p.to_s).to eq("chang (170 cm) maaleja 4")
  end

  it "getterit ja setterit toimivat" do
    require './pelaaja.rb'
    p1 = Pelaaja.new 'chang', 170
    expect(p1.nimi).to eq("chang")
    expect(p1.maaleja).to eq(0)
    p1.lisaa_maali
    expect(p1.maaleja).to eq(1)

    p2 = Pelaaja.new 'arto', 181
    expect(p2.nimi).to eq("arto")

    expect(p1.pituus).to eq(170)
    expect(p2.pituus).to eq(181)

    p1.pituus = 171
    expect(p1.pituus).to eq(171)
    expect(p1.to_s).to eq("chang (171 cm) maaleja 1")
  end
end
