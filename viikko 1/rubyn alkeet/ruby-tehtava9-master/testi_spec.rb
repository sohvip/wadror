require './koodi.rb'

RSpec.describe 'metodi esiintymat' do
  it "palauttaa hashin, missä esiintymäfrekvenssi" do
    method_taking_array_exists(self, :esiintymat, [1, 3])
    expect(esiintymat([1, 3])).to eq({ 1=>1, 3=>1 })
    expect(esiintymat([2, 2])).to eq({ 2=>2 })
    expect(esiintymat([1, 2, 6, 3, 8, 9, 1, 2, 3, 4, 3])).to eq({1=>2, 2=>2, 6=>1, 3=>3, 8=>1, 9=>1, 4=>1})
    expect(esiintymat([7, 4, -1, -1, 7, 4, 4, 4, 1])).to eq({7=>2, 4=>4, -1=>2, 1=>1})
    expect(esiintymat([1, 8, 7, 5, 6, 4, 5, 6, 1, 8, 8])).to eq({1=>2, 8=>3, 7=>1, 5=>2, 6=>2, 4=>1})
    expect(esiintymat([])).to eq({ })
  end

end
