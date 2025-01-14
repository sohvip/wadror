require './koodi.rb'

RSpec.describe 'metodi arvojarjestys' do
  it "palauttaa arvona olevat luvut suuruusjärjestyksessä" do
    method_exists(self, :arvojarjestys, { 1=>2, 3=>1 })
    expect(arvojarjestys({ 1=>2, 3=>1 })).to eq([1, 2])
    expect(arvojarjestys({1=>2, 2=>2, 6=>1, 3=>3, 8=>1, 9=>1, 4=>1})).to eq([1, 1, 1, 1, 2, 2, 3])
    expect(arvojarjestys({7=>2, 4=>4, 3=>-2, 1=>1})).to eq([1, 2, 4])
    expect(arvojarjestys({1=>2, 8=>3, 7=>-1, 5=>2, 6=>-2, 4=>1})).to eq([1, 2, 2, 3])
    expect(arvojarjestys({ })).to eq([])
    expect(arvojarjestys({1=>-1, 2=>-4})).to eq([])
  end

end
