require './koodi.rb'

RSpec.describe 'metodi avainten_summa' do
  it "palauttaa parametrina olevan hadshin avainten summan" do
    method_exists(self, :avainten_summa, { 1=>1, 3=>1 })
    expect(avainten_summa({ 1=>1, 3=>1 })).to eq(4)
    expect(avainten_summa({1=>2, 2=>2, 6=>1, 3=>3, 8=>1, 9=>1, 4=>1})).to eq(33)
    expect(avainten_summa({7=>2, 4=>4, -1=>2, 1=>1})).to eq(11)
    expect(avainten_summa({1=>2, 8=>3, 7=>1, 5=>2, 6=>2, 4=>1})).to eq(31)
    expect(avainten_summa({ })).to eq(0)
  end

end
