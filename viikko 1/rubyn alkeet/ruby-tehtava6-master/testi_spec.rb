require './koodi.rb'

RSpec.describe 'metodi puuttuva' do
  it "palauttaa taulukosta puuttuvan luvun" do
    method_taking_array_exists(self, :monista, [1,2])
    expect(monista([1,2])).to eq(["1", "22"])
    expect(monista([5,4,2])).to eq(["55555", "4444", "22"])
    expect(monista([1,2,3, 2, 1])).to eq(["1", "22", "333", "22", "1"])
    expect(monista([2,2, 2, 1, 10])).to eq(["22", "22", "22", "1", "10"*10])
  end

  it "kutsuu taulukolle metodia map" do
    map_called = false
    table = [1,3]
    allow(table).to receive(:map) do |arg|
        map_called = true
        "1"
    end
    monista(table)
    expect(map_called).to be true
  end
end
