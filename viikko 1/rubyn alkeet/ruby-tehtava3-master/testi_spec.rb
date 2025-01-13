require './koodi.rb'

RSpec.describe 'metodi kertoma' do
  it "palauttaa parametrinsa kertoman" do
    method_exists(self, :kertoma, 1)
    expect(kertoma(1)).to eq(1)
    expect(kertoma(3)).to eq(6)
    expect(kertoma(4)).to eq(24)
    expect(kertoma(6)).to eq(720)
    expect(kertoma(10)).to eq(3628800)
  end
end