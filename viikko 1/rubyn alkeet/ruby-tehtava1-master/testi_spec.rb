require './koodi.rb'

RSpec.describe 'metodi summa' do
  it "palauttaa parametriensa summan" do
    method_exists(self, :summa, 1,2)
    expect(summa(1, 1)).to eq(2)
    expect(summa(2, 3)).to eq(5)
    expect(summa(10, 20)).to eq(30)
  end
end