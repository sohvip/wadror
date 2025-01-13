require './koodi.rb'

RSpec.describe 'metodi puuttuva' do
  it "palauttaa taulukosta puuttuvan luvun" do
    method_taking_array_exists(self, :puuttuva, [1,0])
    expect(puuttuva([1,0])).to eq(2)
    expect(puuttuva([1,2])).to eq(0)
    expect(puuttuva([1,2,4,0])).to eq(3)
    expect(puuttuva([1, 7, 4, 0, 2, 5, 3])).to eq(6)
    expect(puuttuva([8, 7, 1, 4, 6, 2, 0, 3])).to eq(5)
  end
end
