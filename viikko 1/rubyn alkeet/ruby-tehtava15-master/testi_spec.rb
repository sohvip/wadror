RSpec.describe 'luokka Varipiste' do

  delta = 0.0001

  it "on määritelty oikeassa tiedostossa" do
    expect(File.exist? './varipiste.rb' ).to be true
    require './varipiste.rb'
    Varipiste
  end

  it "perii luokan Piste" do
    require './varipiste.rb'
    require './piste.rb'
    expect(Varipiste < Piste).to eq true
  end

  it "konstruktori ja to_s toimivat" do
    require './varipiste.rb'
    p1 = Varipiste.new 1, 2, :punainen
    expect(p1.to_s).to eq('(1, 2) punainen')

    p2 = Varipiste.new 7, 3, :vihrea
    expect(p2.to_s).to eq('(7, 3) vihrea')
  end

  it "metodi etaisyys_origosta on peritty pisteeltä" do
    require './varipiste.rb'
    expect(Varipiste.new(1,1, :red).method(:etaisyys_origosta).owner).to eq Piste
  end

  it "metodi etaisyys_origosta toimii" do
    require './varipiste.rb'
    p1 = Varipiste.new 3, 4, :punainen
    expect(p1.etaisyys_origosta).to be_within(delta).of 5

    p1 = Varipiste.new 1, 1, :vihrea
    expect(p1.etaisyys_origosta).to be_within(delta).of Math.sqrt 2
  end

  it "metodi siirra on peritty pisteeltä" do
    require './varipiste.rb'
    expect(Varipiste.new(1,1, :red).method(:siirra).owner).to eq Piste
  end

  it "metodi siirra toimii" do
    require './varipiste.rb'
    p1 = Varipiste.new 3, 4, :punainen
    p1.siirra(1,1)
    expect(p1.to_s).to eq('(4, 5) punainen')
    p1.siirra(-6,2)
    expect(p1.to_s).to eq('(-2, 7) punainen')
  end
end

RSpec.describe 'luokka Piste3d' do

  delta = 0.0001


  it "on määritelty oikeassa tiedostossa" do
    expect(File.exist? './piste3d.rb' ).to be true
    require './piste3d.rb'
    Piste3d
  end

  it "perii luokan Piste" do
    require './piste3d.rb'
    require './piste.rb'
    expect(Piste3d < Piste).to eq true
  end

  it "konstruktori ja to_s toimivat" do
    require './piste3d.rb'
    p1 = Piste3d.new 1, 2, 5
    expect(p1.to_s).to eq('(1, 2, 5)')

    p2 = Piste3d.new 7, 3, 9
    expect(p2.to_s).to eq('(7, 3, 9)')
  end

  it "metodi etaisyys_origosta on ylikirjoitettu" do
    require './piste3d.rb'
    expect(Piste3d.new(1, 1, 1).method(:etaisyys_origosta).owner).to eq Piste3d
  end

  it "metodi etaisyys_origosta toimii" do
    require './piste3d.rb'
    p1 = Piste3d.new 4, 4, 2
    expect(p1.etaisyys_origosta).to be_within(delta).of 6

    p1 = Piste3d.new 1, 1, 1
    expect(p1.etaisyys_origosta).to be_within(delta).of Math.sqrt 3
  end

  it "metodi siirra on ylikirjoitettu" do
    require './piste3d.rb'
    expect(Piste3d.new(1, 1, 1).method(:siirra).owner).to eq Piste3d
  end

  it "metodi siirra toimii" do
    require './piste3d.rb'
    p1 = Piste3d.new 3, 4, 3
    p1.siirra(1, 1, 2)
    expect(p1.to_s).to eq('(4, 5, 5)')
    p1.siirra(-6, 2, 0)
    expect(p1.to_s).to eq('(-2, 7, 5)')
  end
end
