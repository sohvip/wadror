RSpec.describe 'luokka Pino' do

  it "on määritelty oikeassa tiedostossa" do
    expect(File.exist? './pino.rb' ).to be true
    require './pino.rb'
    Pino
  end

  it "metodit push ja pop toimivat" do
    require './pino.rb'
    p = Pino.new
    p.push 1
    p.push 2
    p.push 3
    expect(p.pop).to eq 3
    expect(p.pop).to eq 2
    expect(p.pop).to eq 1

    p.push "a"
    p.push "b"
    p.push "c"
    p.push "d"
    expect(p.pop).to eq "d"
    expect(p.pop).to eq "c"
    expect(p.pop).to eq "b"
    expect(p.pop).to eq "a"
  end

  it "pop heittää oikean poikkeuksen kutsuttaessa tyhjälle pinolle" do
    require './pino.rb'
    p = Pino.new
    expect { p.pop }.to raise_error(RuntimeError)
  end

  it "on Enumerable" do
    require './pino.rb'
    expect(Pino.included_modules.include? Enumerable).to eq true

    p = Pino.new
    expect(p.any?).to eq false
    expect(p.count).to eq 0

    [4, 3, 6, 7, 9, 8, 0, 1, 2, 5].each { |i| p.push(i) }
    expect(p.any?).to eq true
    expect(p.count).to eq 10
    expect(p.min).to eq 0
    expect(p.max).to eq 9
    expect(p.sort).to eq [0,1,2,3,4,5,6,7,8,9]
    expect(p.inject(:+)).to eq 45
    expect(p.pop).to eq 5
    expect(p.pop).to eq 2
    expect(p.pop).to eq 1
    [8, -2, 11, 4, 1].each { |i| p.push(i) }
    expect(p.count).to eq 12
    expect(p.min).to eq -2
    expect(p.max).to eq 11
    expect(p.inject(:+)).to eq 59
  end


end